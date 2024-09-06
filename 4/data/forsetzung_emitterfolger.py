import numpy as np

# R_C = 390 (47k, 22k, 1k)
# R_E = 390 (47k, 22k, 1k)
Vpp = np.array([2.03,2.05,2.00,240e-3,228e-3,1.89])

###################

# Spannungsverstärkung

# Kondensator in Reihe 0.1 micro F 

# R_C = 390 R_E = 470
# R_C = 390 R_E = 1k
# R_C = 390 R_E = 4.7k
# R_C = 390 R_E = 33k
# R_C = 390 R_E = 47k
eingang_C = np.array([210e-3, 206e-3, 200e-3, 204e-3, 200e-3])
ausgang_C = np.array([144e-3, 90e-3, 50e-3, 40e-3, 36e-3])

# R_E = 390 R_C = 470
# R_E = 390 R_C = 1k
# R_E = 390 R_C = 4.7k
# R_E = 390 R_C = 33k
# R_E = 390 R_C = 47k
eingang_E = np.array([210e-3, 216e-3, 1.02, 188e-3, 188e-3])
ausgang_E = np.array([180e-3, 322e-3, 2.33, 44e-3, 44e-3])

Delta = 5e-3


# <-
# noise
#######
# no noise at 4.1.3
# ->

# Spielraum (R_E = 0): 1.359k\ohm -- 3.161k\ohm
# Spielraum (R_E = 390): 1.178k\ohm -- 10k\ohm (geht net höher)

# 44kHz verstärkung von x10 mit 0.1 micro F kondensator parallel zu R_E = 390


# 100 Hz 1.70
# 1 kHz 1.70
# 10 kHz 1.70
# 100 kHz 1.60
# 200 kHz 1.50 
# 500 kHz 1.20
# 800 kHz 900m
# 1 MHz 800m
# 2 MHz 600m
# 5 MHz 200m
