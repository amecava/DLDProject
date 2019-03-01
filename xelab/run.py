import os
import re
import sys
import random
import argparse
import subprocess
from string import Template

# Set settings64 paths for Vivado setup
settings64Vivado = r"CALL C:\Xilinx\Vivado\2018.3\.settings64-Vivado.bat & "
settings64DocNav = r"CALL C:\Xilinx\DocNav\.settings64-DocNav.bat & "
settings64SDKCoreTools = r"CALL C:\Xilinx\SDK\2018.3\.settings64-SDK_Core_Tools.bat & "

def to_binary(num):
    # Convert integer to binary array
    return list(map(int, list("".join(str(1 & int(num) >> i) for i in range(8)[::-1]))))

def to_int(bin_array):
    # Convert binary array to integer
    num = 0
    for bit in bin_array:
        num = (num << 1) | bit
    
    return num

def compute_result(value):
    # Input bitmask and set mindist
    bitmask = to_binary(value[0])
    mindist = 511

    # Calculate Manhattan distance
    for i in range(0, 8):
        if bitmask[i] == 1:
            distance = abs(value[9][0] - value[8 - i][0]) + abs(value[9][1] - value[8 - i][1])

            if distance < mindist:
                for j in range(0, i):
                    bitmask[j] = 0
                
                mindist = distance
                  
            elif distance > mindist:
                bitmask[i] = 0
  
    return to_int(bitmask)

def generate_input(mode):
    value = []

    # Input mode selection
    if mode == 's':
        # Stdin bitmask and centroids
        value.append(int(input("Bitmask: ")))
        for i in range(1, 9):
            x, y = input("Centroid " + str(i) + " X Y: ").split()
            value.append([int(x), int(y)])
        x, y = input("Point X Y: ").split()
        value.append([int(x), int(y)])

    elif mode == 'r':
        # Random bitmask and random centroids
        value.append(random.randint(0, 255))
        for _ in range(1, 10):
            value.append([random.randint(0, 255), random.randint(0, 255)])

    # Create template dictionary
    d = {'BITMASK': value[0], 
         'XC1': value[1][0], 'YC1': value[1][1],
         'XC2': value[2][0], 'YC2': value[2][1],
         'XC3': value[3][0], 'YC3': value[3][1],
         'XC4': value[4][0], 'YC4': value[4][1],
         'XC5': value[5][0], 'YC5': value[5][1],
         'XC6': value[6][0], 'YC6': value[6][1],
         'XC7': value[7][0], 'YC7': value[7][1],
         'XC8': value[8][0], 'YC8': value[8][1],
         'X': value[9][0], 'Y': value[9][1],
         'RESULT': compute_result(value)
        }

    return d

def main():
    # Argument parser
    parser = argparse.ArgumentParser(description="Run behavioural simulation on template testbench.")
    parser.add_argument("-n", action="store", dest="n", type=int, default=1, help="NUMBER of simulations [default = 1].")
    parser.add_argument('-m', choices=['s', 'r'], default='r', help="input mode selection: s for STDIN / r for RANDOM [default = r].")
    args = parser.parse_args()

    # Testbench template file
    filein = open("tb_template.vhd")
    template = Template(filein.read())
    filein.close()

    for i in range(0, args.n):
        # Temporary testbench file
        fileout = open("temporary.vhd", 'w')

        print("\nSimulation ID: " + str(i + 1))

        # Generate input and create testbench
        value = generate_input(args.m)
        fileout.write(template.substitute(value))
        fileout.close()

        print("    Expected return value: " + str(bin(value.get('RESULT'))))
        sys.stdout.write("    Running simulation ")
        sys.stdout.flush()

        # Run behavioural simulation
        bash = subprocess.getoutput(settings64Vivado +
                                    settings64DocNav +
                                    settings64SDKCoreTools +
                                    "xvhdl temporary.vhd & " +
                                    "xvhdl project_reti_logiche.vhd & " +
                                    "xelab project_tb & " +
                                    "xsim work.project_tb -runall"
                                    )
        
        # Parse bash output for result
        if "passed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"passed(\d+)", bash).group(1)))))
            print("=> Simulation passed")
        elif "failed" in bash:
            print("\n    RAM address 0b00010011: " + str(bin(int(re.search(r"failed(\d+)", bash).group(1)))))
            
            # GUI waveform debugging
            if input("=> Simulation failed, run GUI waveform debugging? [y] ").lower() == 'y':
                bash = subprocess.getoutput(settings64Vivado +
                                    settings64DocNav +
                                    settings64SDKCoreTools +
                                    "xvhdl temporary.vhd & " +
                                    "xvhdl project_reti_logiche.vhd & " +
                                    "xelab project_tb -debug all & " +
                                    "xsim work.project_tb -gui"
                                    )

    # Remove temporary testbench file
    if os.path.exists("temporary.vhd"):
        os.remove("temporary.vhd")

if __name__ == "__main__":
    main()
