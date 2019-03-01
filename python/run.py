import os
import re
import sys
import random
import argparse
import subprocess
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

def query_yes_no(question, default="yes"):
    # Valid answers to question
    valid = {"yes": True, 'y': True,
             "no": False, 'n': False
            }

    # Set prompt with default
    if default is None:
        prompt = " [y/n] "
    elif default == "yes":
        prompt = " [Y/n] "
    elif default == "no":
        prompt = " [y/N] "

    # Select choice
    while True:
        choice = input(question + prompt).lower()
        if default is not None and choice == '':
            return valid[default]
        elif choice in valid:
            return valid[choice]
        else:
            print("Respond with yes or no (or 'y' or 'n').")

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

def generate_input(mode):
    tb_values = []

    # Testbench populate mode
    if mode == 's':
        # Stdin bitmask and centroids
        tb_values.append(int(input("Bitmask: ")))
        for i in range(1, 9):
            x, y = input("Centroid " + str(i) + " X Y: ").split()
            tb_values.append([int(x), int(y)])
        x, y = input("Point X Y: ").split()
        tb_values.append([int(x), int(y)])

    elif mode == 'r':
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

def vivado_settings_path():
    # Search settings64 bat files
    for root, _, files in os.walk(r"C:\\"):
        for name in files:
            if name == ".settings64-Vivado.bat":
                settings64Vivado = os.path.abspath(os.path.join(root, name))
            if name == ".settings64-DocNav.bat":
                settings64DocNav = os.path.abspath(os.path.join(root, name))
            if name == ".settings64-SDK_Core_Tools.bat":
                settings64SDKCoreTools = os.path.abspath(os.path.join(root, name))

    return settings64Vivado, settings64DocNav, settings64SDKCoreTools

def main():
    # Argument parser
    parser = argparse.ArgumentParser(description="Run behavioural simulation on template testbench.")
    parser.add_argument("filename", action="store", help="project vhd file to perform simulation.")
    parser.add_argument("-n", action="store", dest="n", type=int, default=1, help="number of simulations [default = 1].")
    parser.add_argument("-m", choices=['s', 'r'], default='r', help="testbench populate mode: s STDIN | r RANDOM [default = r].")
    args = parser.parse_args()

    # Find settings64 paths
    settings_path = ['', '', '']
    sys.stdout.write(r"Searching settings64 bat files in C:\ ")
    sys.stdout.flush()
    settings_path[0], settings_path[1], settings_path[2] = vivado_settings_path()
    print("\n=> " + settings_path[0])
    print("=> " + settings_path[1])
    print("=> " + settings_path[2])
    
    # Create settings64 calls
    settings_call = ("CALL " + settings_path[0] + " & " +
                     "CALL " + settings_path[1] + " & " +
                     "CALL " + settings_path[2] + " & "
                    )

    # Testbench template file
    filein = open("tb_template.vhd")
    template = Template(filein.read())
    filein.close()

    passed_simulations = 0

    for i in range(0, args.n):
        # Temporary testbench file
        fileout = open("temporary.vhd", 'w')

        print("\nSimulation ID: " + str(i + 1))

        # Generate input and create testbench
        tb_values = generate_input(args.m)
        fileout.write(template.substitute(tb_values))
        fileout.close()

        print("    Expected return value: " + str(bin(tb_values.get("RESULT"))))
        sys.stdout.write("    Running simulation ")
        sys.stdout.flush()

        # Run behavioural simulation
        bash = subprocess.getoutput(settings_call +
                                    "xvhdl temporary.vhd & " +
                                    "xvhdl " + args.filename + " & " +
                                    "xelab project_tb & " +
                                    "xsim work.project_tb -runall"
                                )
        
        # Parse bash output for result
        if "passed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"passed(\d+)", bash).group(1)))))
            print("=> Simulation passed")

            passed_simulations += 1
        elif "failed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"failed(\d+)", bash).group(1)))))
            print("=> Simulation failed")
            # GUI waveform debugging
            if query_yes_no("Run GUI waveform debugging?"):
                bash = subprocess.getoutput(settings_call +
                                            "xvhdl temporary.vhd & " +
                                            "xvhdl project_reti_logiche.vhd & " +
                                            "xelab project_tb -debug all & " +
                                            "xsim work.project_tb -gui"
                                        )

    # Number of passed simulations
    print("\nNumber of passed simulations: " + 
          str(passed_simulations) + '/' + str(args.n) + 
          " (" + str((passed_simulations * 100) / args.n) + "%)"
        )

    # Remove temporary testbench file
    if os.path.exists("temporary.vhd"):
        os.remove("temporary.vhd")

if __name__ == "__main__":
    main()
