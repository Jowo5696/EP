import numpy as np

U_0 = -2.23

U_D = np.array([-2.2, -1.7, -1.2, -0.6, 0.1, 0.8, 1.6]) - U_0
dU_D = 0.2 + np.zeros(U_D.shape[0])
I_D = U_D/500
sqrtI_D = I_D**(1/2)
dI_D = dU_D/500
d_sqrtI_D = 1/2*I_D**(-1/2)*dI_D
R_p = 30.9e3
dR_p = 0.9e3

U_GS = R_p * np.arange(U_D.shape[0]) * 6e-6 - I_D * 100
dU_GS = ((dI_D * 100)**2 + (dR_p * np.arange(U_D.shape[0]) * 6e-6)**2)**(1/2)

import olib
table = olib.Table(U_GS, I_D, Xerr=dU_GS, Yerr=dI_D, title="Schwellspannung_des_FETs",  xlabel="$U_{GS}$", ylabel="$I_D$")
table.saveAsPDF(height=-1)

table2 = olib.Table(U_GS, sqrtI_D, Xerr=dU_GS, Yerr=d_sqrtI_D, title="Schwellspannung_des_FETs_mit_Wurzel",  xlabel="$U_{GS}$ [V]", ylabel=r"$\sqrt{I_D}$ [$\sqrt{\text{A}}$]")
table2.saveAsPDF(height=-1)

np.savetxt("../data/FET_Kennlinien.dat", np.array((U_GS, I_D, dI_D, dU_GS, sqrtI_D, d_sqrtI_D)).T)

