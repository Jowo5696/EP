#!/usr/local/bin/gnuplot -persist
set term cairolatex 

set grid
set key top right

glw = 4 # global standard linewidth
# colors from the gruvbox theme

set style line 100 lw glw
set style line 1 lw glw lc rgb '#cc241d' # red
set style line 2 lw glw lc rgb '#98971a' # green
set style line 3 lw glw lc rgb '#2e2be2' # blue
set style line 4 lw glw lc rgb '#30d5c8' # turquoise
set style line 5 lw glw lc rgb '#d79921' # yellow
set style line 6 lw glw lc rgb '#8a2be2' # violet
set style line 7 lw glw lc rgb '#d65d0e' # orange
set style line 8 lw glw lc rgb '#1d2021' # dark gray
set style line 9 lw glw lc rgb '#6f4e37' # brown
set style line 10 lw glw lc rgb '#12389' # other blue
set style line 11 lw glw lc rgb '#FFFF00' # other yellow

#v0 = -26.8
#R_C = 390

v0p = -0.2
R_Cp = 1e4
#unset key
set output "amp_res_relation.tex"
set title "Amplification resistance relation with constant R_C"
set xlabel '$R_E$ [$\Omega$]'
set ylabel '$\frac{1}{\nu}$'
#set yrange [-1:1]
#f(x) = (1/v0-x/R_C)
b(x) = (1/v0p-x/R_Cp)
#v0p=1e-3
#R_Cp=1e3
#fit b(x) "../data/amp_res_relation.dat" using 1:2 via v0p, R_Cp # refining found paramters with errorbars (wihtout good start parameters bad convergence)
fit b(x) "../data/amp_res_relation.dat" using 1:2:3 yerrors via v0p, R_Cp # refining found paramters with errorbars (wihtout good start parameters bad convergence)
plot "../data/amp_res_relation.dat" using 1:2:3 with yerrorbars title "data",\
    b(x) title '$\frac{1}{v(R_E)}_{fit} = \frac{1}{v_0} - \frac{1}{R_C} \cdot R_E$'
    #f(x) title "prediction"


R_E=390


set output "amp_res_relation2.tex"
set title "Amplification resistance relation wiht constant R_E"
set xlabel '$R_C$ [$\Omega$]'
set ylabel '$\nu$'
#set xrange [470:47e3]
g(x) = -k*x
k=1.7e-4
#h=1.2
#fit g(x) "../data/amp_res_relation2.dat" using 1:2 via k, h# finding good start parameters
fit g(x) "../data/amp_res_relation2.dat" using 1:2:3 yerrors via k # refining found paramters with errorbars (wihtout good start parameters bad convergence)
plot "../data/amp_res_relation2.dat" using 1:2:3 with yerrorbars title "data",\
    g(x) title '$v_{fit}(R_C) = - k \cdot R_C$ with $k=\frac{\beta}{r_{BE} + \gamma R_E}$'




