import numpy as np


# R_C = 390 (47k, 22k, 1k)
# R_E = 390 (47k, 22k, 1k)
Vpp = np.array([2.03,2.05,2.00,240e-3,228e-3,1.89])
dVpp = 0.05

amp = Vpp/2
damp = dVpp/2
print(amp)
print(damp)

