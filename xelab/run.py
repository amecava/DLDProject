import os
import subprocess
from string import Template

filein = open("testbench.vhd")
fileout = open("temporary.vhd", 'w')

template = Template(filein.read())

d={'BITMASK': 185, 
   'XC1': 75, 'YC1': 32,
   'XC2': 111, 'YC2': 213,
   'XC3': 79, 'YC3': 33,
   'XC4': 1, 'YC4': 33,
   'XC5': 80, 'YC5': 35,
   'XC6': 12, 'YC6': 254,
   'XC7': 215, 'YC7': 78,
   'XC8': 211, 'YC8': 121,
   'X': 78, 'Y': 33,
   'RESULT': 17 
}

fileout.write(template.substitute(d))
fileout.close()
filein.close()

simulation = subprocess.getoutput("xvhdl temporary.vhd & " +
                                  "xvhdl project_reti_logiche.vhd & " +
                                  "xelab project_tb & " + 
                                  "xsim work.project_tb -runall"
                                )

if "TEST PASSATO" in simulation:
    print("Simulation passed")
else:
    print("Simulation failed")

if os.path.exists("temporary.vhd"):
   os.remove("temporary.vhd")