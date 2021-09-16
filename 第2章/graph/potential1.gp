set datafile separator " "
set key right bottom
set size ratio 1
#set logscale y
set mxtics
set mytics
set ylabel "$-U(\\phi)$"
set xlabel "$\\phi$"

set xrange [-1:5]
set yrange [-5:2]
set noxtics
set noytics
set xzeroaxis linetype 1 linecolor "black"
set yzeroaxis linetype 1 linecolor "black"
#set format x "%g"

#a=0.4
#b=10
f(x)=-(x-2)*(x-2)
#fit [0.1:2] f(x) "means_0.dat" using 1:2 via a,b

#plot "means_0.dat" using 1:2 with points pointtype 7 lc 1 title "$\\phi_{pr}$"
plot f(x) lc 7 linewidth 2 notitle

set term lua tikz size 12cm, 8cm font '\footnotesize'
set output "potential1.tex"
replot

set terminal windows
set output