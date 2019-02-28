# EXECUTE SETTINGS64.BAT BEFORE RUNNING THIS SCRIPT

import os
import sys
import random
import subprocess
from string import Template

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

    if mode == 0:
        # Input bitmask and centroids
        value.append(int(input("Bitmask: ")))
        for i in range(1, 9):
            x, y = input("Centroid " + str(i) + " X Y: ").split()
            value.append([int(x), int(y)])
        x, y = input("Point X Y: ").split()
        value.append([int(x), int(y)])
    else:
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
    # Testbench template file
    filein = open("tb_template.vhd")
    template = Template(filein.read())
    filein.close()

    if len(sys.argv) == 2 and sys.argv[1] == "-input":
        # Temporary testbench file
        fileout = open("temporary.vhd", 'w')
        fileout.write(template.substitute(generate_input(0)))
        fileout.close()

        sys.stdout.write("Running simulation ")
        sys.stdout.flush()

        # Run behavioural simulation
        bash = subprocess.getoutput("xvhdl temporary.vhd & " +
                                    "xvhdl project_reti_logiche.vhd & " +
                                    "xelab project_tb & " +
                                    "xsim work.project_tb -runall"
                                )

        # Parse bash output for result
        if "passed" in bash:
            print("=> Simulation passed")
        elif "failed" in bash:
            print("=> Simulation failed")
        
    elif len(sys.argv) == 3 and sys.argv[1] == "-random":
        if int(sys.argv[2]) > 0:
            for i in range(0, int(sys.argv[2])):
                # Temporary testbench file
                fileout = open("temporary.vhd", 'w')
                fileout.write(template.substitute(generate_input(1)))
                fileout.close()

                sys.stdout.write("Running simulation " + str(i + 1) + " ")
                sys.stdout.flush()

                # Run behavioural simulation
                bash = subprocess.getoutput("xvhdl temporary.vhd & " +
                                            "xvhdl project_reti_logiche.vhd & " +
                                            "xelab project_tb & " +
                                            "xsim work.project_tb -runall"
                                        )

                # Parse bash output for result
                if "passed" in bash:
                    print("=> Simulation passed")
                elif "failed" in bash:
                    print("=> Simulation failed")
    else:
        print("Usage: python " + sys.argv[0] + " [-input] | [-random n]")

    # Remove temporary testbench file
    if os.path.exists("temporary.vhd"):
        os.remove("temporary.vhd")

if __name__ == "__main__":
    main()