set terminal epslatex color
set output "output_c.tex"
unset title
set xlabel 'Frequenz $\nu$ [Hz]'
set ylabel 'Dämpfung (peak--peak) $20\log\left(\frac{U}{U_0}\right)$ [dB]'
set grid
set key box top left # 'samplen x' sets how much space the symbol takes
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

set arrow from 3386,0 to 3386,10 nohead ls 2 lw 3
set label at 200,8.5 '$f_\mathrm{Grenz}\approx 3386$\,kHz'
set label at 100,5.2 '4.5\,dB'

set logscale x 10
plot '../data/c_mod' u 2:log(1):3 with yerrorbars notitle ls 1 ps 2,\
        4.5 notitle ls 3 lw 3
# NaN with points / lines title '' ls 1 # fake legend

# pt 0 pixel
# pt 1 plus
# pt 13 dot
# lw linewidth
# ps pointsize
# yerrorbars uses last column
# lc rgb #d95f02 (orange) #1b9e77 (green) #7570b3 (blue)
