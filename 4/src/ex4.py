import numpy as np



eingang_C = np.array([210e-3, 206e-3, 200e-3, 204e-3, 200e-3])
ausgang_C = np.array([144e-3, 90e-3, 50e-3, 40e-3, 36e-3])
res = np.array([470, 1e3, 4.7e3, 33e3, 47e3])

dein = 5e-3
daus = 5e-3

amp = -ausgang_C / eingang_C
damp = ((daus/eingang_C)**2+(ausgang_C/eingang_C**2*dein)**2)**(1/2)

eingang_E = np.array([210e-3, 216e-3, 1.02])
ausgang_E = np.array([180e-3, 322e-3, 2.33])

dEamp = ((daus/eingang_E)**2+(ausgang_E/eingang_E**2*dein)**2)**(1/2)
ampE = -ausgang_E/eingang_E

print(1/amp)
np.savetxt("../data/amp_res_relation.dat", np.array((res, 1/amp, damp/amp**2)).T)
#np.savetxt("../data/amp_res_relation.dat", np.array((res, amp, damp)).T)
np.savetxt("../data/amp_res_relation2.dat", np.array((res[:-2], ampE, dEamp)).T)

