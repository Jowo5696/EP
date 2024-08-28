import numpy as np
from numpy import loadtxt

numbers = loadtxt("../data/c", comments="#", delimiter=" ", skiprows=5)

for i in range(len(numbers)):
    numbers[i,0] = (numbers[i,0]/4.0)**20

print(numbers)
