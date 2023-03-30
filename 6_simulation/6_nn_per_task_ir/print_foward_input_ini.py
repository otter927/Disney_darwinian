import sys
import random
import math

import random
import csv
import numpy as np

f = open("foward_input_ini.txt", 'w')
writer = csv.writer(f, delimiter=' ')

tmp = []
for i in range(80*180):
    tmp.append(0.5)

#print(tmp)    
writer.writerows([tmp])
