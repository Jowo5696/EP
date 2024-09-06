import numpy as np

# R_C = 390 R_E = 470
# R_C = 390 R_E = 1k
# R_C = 390 R_E = 4.7k
# R_C = 390 R_E = 33k
# R_C = 390 R_E = 47k
eingang_C = np.array([210e-3, 206e-3, 200e-3, 204e-3, 200e-3])
ausgang_C = np.array([144e-3, 90e-3, 50e-3, 40e-3, 36e-3])
dC = 5e-3
print(ausgang_C/eingang_C)
print(dC/eingang_C)

# R_E = 390 R_C = 470
# R_E = 390 R_C = 1k
# R_E = 390 R_C = 4.7k
# R_E = 390 R_C = 33k
# R_E = 390 R_C = 47k
arr = np.array([470, 1e3, 4.7e3, 33e3, 47e3])
print()
eingang_E = np.array([210e-3, 216e-3, 1.02, 188e-3, 188e-3])
ausgang_E = np.array([180e-3, 322e-3, 2.33, 44e-3, 44e-3])
print(ausgang_E/eingang_E)
print(dC/eingang_E)
print()
print(390/arr)
print(arr/390)
