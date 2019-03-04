import os
import re
import sys
import random
import argparse
import subprocess
from shutil import copyfile
from string import Template

def to_binary_array(num):
    # Convert integer to binary array
    return list(map(int, list(''.join(str(1 & int(num) >> i) for i in range(8)[::-1]))))

def to_integer(bin_array):
    # Convert binary array to integer
    num = 0
    for bit in bin_array:
        num = (num << 1) | bit
    
    return num

def compute_result(tb_values):
    # Input bitmask and set mindist
    bitmask = to_binary_array(tb_values[0])
    mindist = 511

    # Calculate Manhattan distance
    for i in range(0, 8):
        if bitmask[i] == 1:
            distance = abs(tb_values[9][0] - tb_values[8 - i][0]) + abs(tb_values[9][1] - tb_values[8 - i][1])

            if distance < mindist:
                for j in range(0, i):
                    bitmask[j] = 0
                
                mindist = distance
                  
            elif distance > mindist:
                bitmask[i] = 0
  
    return to_integer(bitmask)

def generate_input():
    tb_values = []

    # Random bitmask and random centroids
    tb_values.append(random.randint(0, 255))
    for _ in range(1, 10):
        tb_values.append([random.randint(0, 255), random.randint(0, 255)])

    # Create template dictionary
    d = {"BITMASK": tb_values[0], 
         "XC1": tb_values[1][0], "YC1": tb_values[1][1],
         "XC2": tb_values[2][0], "YC2": tb_values[2][1],
         "XC3": tb_values[3][0], "YC3": tb_values[3][1],
         "XC4": tb_values[4][0], "YC4": tb_values[4][1],
         "XC5": tb_values[5][0], "YC5": tb_values[5][1],
         "XC6": tb_values[6][0], "YC6": tb_values[6][1],
         "XC7": tb_values[7][0], "YC7": tb_values[7][1],
         "XC8": tb_values[8][0], "YC8": tb_values[8][1],
         "X": tb_values[9][0], "Y": tb_values[9][1],
         "RESULT": compute_result(tb_values)
        }

    return d

def verilog_glbl_search():
    print("\nVerilog glbl.v not found.")
    sys.stdout.write(r"Searching verilog glbl.v in C:\ ")
    sys.stdout.flush()

    for root, _, files in os.walk(r"C:\\"):
        for name in files:
            if name == "glbl.v" and r"data\verilog\src\glbl.v" in os.path.abspath(os.path.join(root, name)):
                copyfile(os.path.abspath(os.path.join(root, name)), "lib/glbl.v")
    
    print("\n=> File found and copyed to working directory.")
    return

def settings64_search():
    print("\nSettings64 bat files not found.")
    sys.stdout.write(r"Searching settings64 bat files in C:\ ")
    sys.stdout.flush()
    
    for root, _, files in os.walk(r"C:\\"):
        for name in files:
            if name == ".settings64-Vivado.bat" and not os.path.exists(".settings64-Vivado.bat"):
                copyfile(os.path.abspath(os.path.join(root, name)), "lib/.settings64-Vivado.bat")
            if name == ".settings64-DocNav.bat" and not os.path.exists(".settings64-DocNav.bat"):
                copyfile(os.path.abspath(os.path.join(root, name)), "lib/.settings64-DocNav.bat")
            if name == ".settings64-SDK_Core_Tools.bat" and not os.path.exists(".settings64-SDK_Core_Tools.batt"):
                copyfile(os.path.abspath(os.path.join(root, name)), "lib/.settings64-SDK_Core_Tools.bat")
    
    print("\n=> Files found and copyed to working directory.")
    return

def vivado_synthesis(args):
    # Create tcl file to run vivado
    create_tcl_file(args)

    sys.stdout.write(r"Post-synthesis simulation selected, running synthesis ")
    sys.stdout.flush()

    # Run synthesis with vivado batch mode
    _ = subprocess.getoutput(settings_call() +
                             "vivado -mode batch -source run.tcl"
                            )

    print("\n=> Synthesis completed.")
    return

def settings_call():
    return ("CALL ../lib/.settings64-Vivado.bat & " +
            "CALL ../lib/.settings64-DocNav.bat & " +
            "CALL ../lib/.settings64-SDK_Core_Tools.bat & "
           )
    

def create_tcl_file(args):
    tclfile = open("run.tcl", 'w')

    tcl_commands = ("read_vhdl ../../vhd/" + args.filename + "\n" +
                    "read_xdc ../../vhd/constraints.xdc\n\n" +
                    "synth_design -top project_reti_logiche -part xc7a200tfbg484-1\n" +
                    "write_checkpoint -force post_synth\n\n"
                   )

    tclfile.write(tcl_commands)

    tclfile.write("open_checkpoint post_synth.dcp\n")

    if args.synth == "functional":
        tclfile.write("write_vhdl -mode funcsim functional_simulation.vhd\n")
    elif args.synth == "timing":
        tclfile.write("write_verilog -mode timesim -sdf_anno true timing_simulation.v\n")
        tclfile.write("write_sdf timing_simulation.sdf\n")
    
    tclfile.close()

    return

def simulation_commands(args):
    if args.synth is None:
        return ("xvhdl project_tb.vhd & " +
                "xvhdl ../../vhd/" + args.filename + " & " +
                "xelab project_tb & " +
                "xsim work.project_tb -runall"
               )

    if args.synth == "functional":
        return ("xvhdl project_tb.vhd & " +
                "xvhdl functional_simulation.vhd & "
                "xelab project_tb & " +
                "xsim work.project_tb -runall"
               )
    
    if args.synth == "timing":
        return ("xvhdl project_tb.vhd & " +
                "xvlog timing_simulation.v & " +
                "xvlog ../lib/glbl.v & " +
                "xelab -transport_int_delays -pulse_r 0 -pulse_int_r 0 project_tb & " +
                "xsim work.project_tb -runall"
               )

def main():
    # Argument parser
    parser = argparse.ArgumentParser(description="Run behavioural, post-synthesis functional or post-synthesis timing simulation on a template testbench populated with random values.")
    parser.add_argument("filename", action="store", help="src folder vhd project file to perform simulation with.")
    parser.add_argument("-n", action="store", type=int, default=1, help="number of simulations [default = 1].")
    parser.add_argument('--synth', default=None, choices=['functional', 'timing'], help="post-synthesis functional or timing simulation [default = behavioural]")
    args = parser.parse_args()

    if not os.path.exists("lib"):
        os.makedirs("lib")
        verilog_glbl_search()
        settings64_search()
    else:
        if not os.path.exists("lib/glbl.v"):
            verilog_glbl_search()

        if not os.path.exists("lib/.settings64-Vivado.bat") or not os.path.exists("lib/.settings64-DocNav.bat") or not os.path.exists("lib/.settings64-SDK_Core_Tools.bat"):
            settings64_search()
    
    if not os.path.exists("log"):
        os.makedirs("log")
        
    # Testbench template file
    filein = open("../vhd/template_tb.vhd")
    template = Template(filein.read())
    filein.close()

    os.chdir("log")
    passed_simulations = 0

    # If functional or timing post-synthesis simulation
    if args.synth is not None:
        # Run synthesis
        vivado_synthesis(args)

    for i in range(0, args.n):
        # Temporary testbench file
        fileout = open("project_tb.vhd", 'w')

        print("\nSimulation ID: " + str(i + 1))

        # Generate input and create testbench
        tb_values = generate_input()
        fileout.write(template.substitute(tb_values))
        fileout.close()

        print("    Expected return value: " + str(bin(tb_values.get("RESULT"))))
        if args.synth is None:
            sys.stdout.write("    Running simulation ")
        else:
            sys.stdout.write("    Running " + args.synth + " simulation ")
        sys.stdout.flush()

        # Run simulation
        bash = subprocess.getoutput(settings_call() +
                                    simulation_commands(args)
                                   )

        # Parse bash output for result
        if "passed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"passed(\d+)", bash).group(1)))))
            print("=> Simulation passed")

            passed_simulations += 1
        elif "failed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"failed(\d+)", bash).group(1)))))
            print("=> Simulation failed")

    # Number of passed simulations
    print("\nNumber of passed simulations: " + 
          str(passed_simulations) + '/' + str(args.n) + 
          " (" + str((passed_simulations * 100) / args.n) + "%)"
        )

if __name__ == "__main__":
    main()
