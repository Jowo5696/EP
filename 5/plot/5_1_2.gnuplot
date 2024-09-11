set terminal epslatex color
set output "5_1_2_output.tex"
set title 'title here'
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

#set label '$\nu=11.5$ at 1,12
#set label '$f=$ at 100,4

set logscale xy 10

#set yrange[1:10]

#f(x) = x**m*n
#fit f(x) '../data/5_1_2.dat' u 2:1 every ::4::10 via m,n
#plot '../data/5_1_2.dat' u 2:1:(0.09) every ::4::18 with xerrorbars notitle ls 1 ps 2,\
plot '../data/raw_5_1_2.dat' u 2:1:(0.09) with xerrorbars notitle ls 2 ps 2,\
        11.5 ls 3 lw 5
#        f(x) notitle ls 2 lw 5,\
# NaN with points / lines title '' ls 1 # fake legend

# pt 0 pixel
# pt 1 plus
# pt 13 dot
# lw linewidth
# ps pointsize
# yerrorbars uses last column
# lc rgb #d95f02 (orange) #1b9e77 (green) #7570b3 (blue)
