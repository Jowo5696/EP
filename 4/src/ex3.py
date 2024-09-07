import numpy as np

R = 390
beta = 547
dbeta= 27
v0 = -26.8
dv0=1.0
r_BE = -beta*R/v0
dr_BE = ((-dbeta*R/v0)**2+(-beta*R/v0**2*dv0)**2)**(1/2)
print(r_BE, dr_BE)
