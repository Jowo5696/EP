set terminal epslatex color
set output "output_5_beides.tex"
set notitle
set xlabel '$I$ [A]'
set ylabel "$U'$ [V]"
set grid
set key box top left width -6 # 'samplen x' sets how much space the symbol takes

set style line 1 lt rgb "#1f78b4" pt 13 ps 1 # blue
set style line 2 lt rgb "#33a02c" pt 13 ps 1 # green
set style line 3 lt rgb "#e31a1c" pt 13 ps .5 # red
set style line 4 lt rgb "#fdbf6f" pt 13 ps .5 # yellow
set style line 5 lt rgb "#ff7f00" pt 13 ps .5 # orange
set style line 6 lt rgb "#6a3d9a" pt 13 ps .5 # purple
set style line 7 lt rgb "#a6cee3" pt 13 ps .5 # pastel blue
set style line 8 lt rgb "#b2df8a" pt 13 ps .5 # pastel green
set style line 9 lt rgb "#fb9a99" pt 13 ps .5 # pastel red
set style line 10 lt rgb "#cab2d6" pt 13 ps .5 # pastel purple

f(x) = m*x+n
fit f(x) '../data/data_5' u 2:1 every ::0::14 via m,n
g(x) = a*x+b
fit g(x) '../data/data_5' u 2:1 every ::15::28 via a,b
plot '../data/data_5' u 2:1 every ::0::14 title 'Ohne Stabilisierung' ls 1,\
        '../data/data_5' u 2:1 every ::15::28 title 'Mit *' ls 2,\
        f(x) title 'straight fit: ohne *' ls 1 lw 1,\
        g(x) title 'straight fit: mit *' ls 2 lw 2
# NaN with points / lines title '' ls 1 # fake legend

# pt 0 pixel
# pt 1 plus
# pt 13 dot
# lw linewidth
# ps pointsize
# yerrorbars uses last column
# lc rgb #d95f02 (orange) #1b9e77 (green) #7570b3 (blue)
