reset
set terminal epslatex color
set output "5_1_2_2_output.tex"
unset title
set xlabel '$f$ [kHz]'
set ylabel '$\nu$ [a.u.]'
set grid
#set key box top left width -4 # 'samplen x' sets how much space the symbol takes
unset key

set style line 1 lt rgb "#1f78b4" pt 13 ps .5 # blue
set style line 2 lt rgb "#33a02c" pt 13 ps .5 # green
set style line 3 lt rgb "#e31a1c" pt 13 ps .5 # red
set style line 4 lt rgb "#fdbf6f" pt 13 ps .5 # yellow
set style line 5 lt rgb "#ff7f00" pt 13 ps .5 # orange
set style line 6 lt rgb "#6a3d9a" pt 13 ps .5 # purple
set style line 7 lt rgb "#a6cee3" pt 13 ps .5 # pastel blue
set style line 8 lt rgb "#b2df8a" pt 13 ps .5 # pastel green
set style line 9 lt rgb "#fb9a99" pt 13 ps .5 # pastel red
set style line 10 lt rgb "#cab2d6" pt 13 ps .5 # pastel purple

set logscale xy 10

set arrow from 7, graph 0 to 7, graph 1 nohead lw 3
set label at 8,0.7 '$f_{\mathrm{grenz}}=\SI{7.0+-0.5}{kHz}$'
set label at 1.2,120 '$\nu = 101$'

set xrange[1:1000]
set yrange[0:200]

f(x) = x**m*n
fit f(x) '../data/raw_5_1_2_2.dat' u 2:1 every ::4::7 via m,n
plot '../data/raw_5_1_2_2.dat' u 2:1:(0.09) with xerrorbars ls 1 ps 1.5,\
        101 ls 2 lw 3,\
        f(x) ls 3 lw 3
