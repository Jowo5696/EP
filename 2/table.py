import numpy as np


y = np.array([1,2,3,4,5])
x_sq = np.array([1,4,9,16,25])

counter = 2

def main(a,b,c,d):

    print('\t$y$ & $x^2$\\\\')
    print('\t\\hline') 
    for i in range(len(a)-1):
        print('\t',a[i],' & ',b[i],' & ',c[i],' & ',d[i],r'\\')
    print('\t',a[-1],' & ',b[-1],' & ',c[-1],' & ',d[-1])

def main2(a,b):

    print('\t$y$ & $x^2$\\\\')
    print('\t\\hline') 
    for i in range(len(a)-1):
        print('\t',a[i],' & ',b[i],r'\\')
    print('\t',a[-1],' & ',b[-1])

#
D1_sperr_U = np.array([0.975,2.009,3.021,4.00,4.97,5.99,7.04,8.02,8.99,9.97,10.99,12.01,12.99,13.95,14.99]) # V
D1_sperr_I = np.array([0.4,0.8,1.2,2.0,2.6,3.1,3.8,4.2,4.8,5.1,5.8,6.1,6.8,7.1,7.8])*10e-6*1/50
Delta_D1_sperr_U = np.array([0.001,0.001,0.001,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01])
Delta_D1_sperr_I = np.zeros(len(D1_sperr_U))+2*10e-6*1/50
#
D1_durchlass_U = np.array([0.005,0.100,0.210,0.297,0.500,0.601,0.700,0.779]) # V
D1_durchlass_I = np.array([0,0,1.4*10e-6,11.3*10e-6,47.4*0.25e-3,4.0*25e-3,28.9*25e-3,37.1*100e-3])*1/50
Delta_D1_durchlass_U = np.zeros(len(D1_durchlass_I))+0.001
Delta_D1_durchlass_I = np.array([2*10e-6,2*10e-6,2*10e-6,2*10e-6,2*0.25e-3,2*25e-3,2*25e-3,2*100e-3])*1/50
#
D2_sperr_U = np.array([12.99,11.93,10.96,9.90,7.02,5.06,3.00,1.985,1.001,0.054]) # V
D2_sperr_I = np.array([20.6*0.25e-3,18.9*0.25e-3,17.5*0.25e-3,16.0*0.25e-3,12.4*0.25e-3,10.1*0.25e-3,38.5*50e-6,33.0*50e-6,22.1*50e-6,17.5*50e-6])*1/50
Delta_D2_sperr_U = np.array([0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.001,0.001,0.001,])
Delta_D2_sperr_I = np.array([2*0.25e-3,2*0.25e-3,2*0.25e-3,2*0.25e-3,2*0.25e-3,2*0.25e-3,2*0.25e-3,2*50e-6,2*50e-6,2*50e-6,2*50e-6])*1/50
#
D2_durchlass_U = np.array([0,0.012,0.021,0.050,0.070,0.082,0.099,0.121,0.129,0.139,0.200,0.230]) # V
D2_durchlass_I = np.array([0,12.1*50e-6,25.0*50e-6,6.1*1e-3,13.9*1e-3,12.2*1e-3,9.0*5e-3,20.9*5e-3,27.9*5e-3,8.6*25e-3,10.6*100e-3,5])*1/50
Delta_D2_durchlass_U = np.zeros(len(D2_durchlass_U))+0.001
Delta_D2_durchlass_I = np.array([0,2*50e-6,2*50e-6,2*50e-3,2*1e-3,2*1e-3,2*1e-3,2*5e-3,2*5e-3,2*5e-3,2*25e-3,2*100e-3,2])*1/50

#
ohne_U = np.array([0.009,1.230,4.73,7.02,8.08,10.32,11.96,13.33,14.73,16.33,17.74,18.90,19.67,20.34,22.10])
ohne_I = np.array([49.0*100e-3,5.7,6.0,6.1,6.2,6.6,6.8,6.9,6.95,7.0,7.1,7.2,7.3,7.4,7.5])*1/50

#
mit_U = np.array([0.003,0.233,0.800,2.792,4.08,4.86,5.48,5.88,6.32,6.92,7.17,7.55,7.80,7.94])
mit_I = np.array([34.7,34.8,34.9,36.0,36.8,37.1,37.6,38.0,38.0,38.1,38.2,38.5,38.8,38.9])*100e-3*1/50

"""
print('\\begin{tabular}{',4*'l','}')
main(D1_sperr_U, D1_sperr_I, Delta_D1_sperr_U, Delta_D1_sperr_I)
print('\\end{tabular}')

print('\\begin{tabular}{',4*'l','}')
main(D1_durchlass_U, D1_durchlass_I, Delta_D1_durchlass_U, Delta_D1_durchlass_I)
print('\\end{tabular}')

print('\\begin{tabular}{',4*'l','}')
main(D2_sperr_U, D2_sperr_I, Delta_D2_sperr_U, Delta_D2_sperr_I)
print('\\end{tabular}')

print('\\begin{tabular}{',4*'l','}')
main(D2_durchlass_U, D2_durchlass_I, Delta_D2_durchlass_U, Delta_D2_durchlass_I)
print('\\end{tabular}')
"""

"""
print('\\begin{tabular}{',2*'l','}')
main2(ohne_U,ohne_I)
print('\\end{tabular}')
print('\\begin{tabular}{',2*'l','}')
main2(mit_U,mit_I)
print('\\end{tabular}')
"""

def plot(a,b):
        
    for i in range(len(a)):
        print(a[i],b[i])
"""
plot(D1_sperr_U, D1_sperr_I, Delta_D1_sperr_U, Delta_D1_sperr_I)
plot(D1_durchlass_U, D1_durchlass_I, Delta_D1_durchlass_U, Delta_D1_durchlass_I)
plot(D2_sperr_U, D2_sperr_I, Delta_D2_sperr_U, Delta_D2_sperr_I)
plot(D2_durchlass_U, D2_durchlass_I, Delta_D2_durchlass_U, Delta_D2_durchlass_I)
"""
plot(ohne_U,ohne_I)
plot(mit_U,mit_I)

