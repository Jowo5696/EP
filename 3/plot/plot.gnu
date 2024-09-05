#!/usr/local/bin/gnuplot -persist
set term cairolatex 

#set grid
#set key right top

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

#unset key
set output "FET_THR.tex"
set title "FET Schwellspannung"
set xlabel '$U_{GS}$ [V]'
set ylabel '$I_D$ [A]'
f(x) = k*(x-b)**2
fit f(x) "../data/FET_Kennlinien.dat" using 1:2 via k, b # finding good start parameters
fit f(x) "../data/FET_Kennlinien.dat" using 1:2:4:3 xyerrors via k, b # refining found paramters with errorbars (wihtout good start parameters bad convergence)
plot "../data/FET_Kennlinien.dat" using 1:2:4:3 with xyerrorbars title "data",\
      f(x) title "fit"

set output "FET_THR_sqrt.tex"
set title "FET Schwellspannung über die Wurzel"
set xlabel '$U_{GS}$ [V]'
set ylabel '$\sqrt{I_D}$ [$\sqrt{\text{A}}$]'
f(x) = k*(x-b)**2
plot "../data/FET_Kennlinien.dat" using 5:2:6:3 with xyerrorbars title "data"
