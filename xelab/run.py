import os
import random
import subprocess
from string import Template

def to_binary(n):
    return list(map(int, list("".join(str(1 & int(n) >> i) for i in range(8)[::-1]))))

def compute_result(value):
    bitmask = to_binary(value[0])
    mindist = 511
    output = 0

    for i in range(0, 8):
        if bitmask[i] == 1:
            distance = abs(value[9][0] - value[8 - i][0]) + abs(value[9][1] - value[8 - i][1])

            if distance < mindist:
                for j in range(0, i):
                    bitmask[j] = 0
                
                mindist = distance
            elif distance > mindist:
                bitmask[i] = 0
    
    for bit in bitmask:
        output = (output << 1) | bit
    
    return output

def generate_input():
    value = []
    value.append(random.randint(0, 255))

    for _ in range(1, 10):
        value.append([random.randint(0, 255), random.randint(0, 255)])


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
    filein = open("tb_template.vhd")

    template = Template(filein.read())

    for i in range(0, int(input("Number of simulations: "))):
        fileout = open("temporary.vhd", 'w')
        fileout.write(template.substitute(generate_input()))
        fileout.close()

        bash = subprocess.getoutput("xvhdl temporary.vhd & " +
        "xvhdl project_reti_logiche.vhd & " +
        "xelab project_tb & " +
        "xsim work.project_tb -runall")

        if "passed" in bash:
            print("Simulation " + str(i) +" passed")
        elif "failed" in bash:
            print("Simulation " + str(i) +" failed")
        elif "ERROR":
            print(bash)

    filein.close()

    if os.path.exists("temporary.vhd"):
        os.remove("temporary.vhd")

if __name__ == "__main__":
    main()