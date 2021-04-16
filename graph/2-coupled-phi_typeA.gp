set datafile separator " "
set key right bottom
#set size ratio 1
#set logscale y
set mxtics
set mytics
set ylabel "$\\phi(x)$"
set xlabel "$x$"

set xrange [-3:3]
set yrange [-2:2]
set noxtics
set noytics
set xzeroaxis linetype 1 linecolor "black"
set yzeroaxis linetype 1 linecolor "black"

#set arrow from  -3,-2 to 6,-2 nohead lw 2 dt '.' lc rgb "blue"
#set format x "%g"

#a=0.4
#b=10
f(x)=2/cosh(x)-1
g(x)=((x>3) ? sqrt((f(x)+1)*(1.5-f(x)))-0.5:-10)
#fit [0.1:2] f(x) "means_0.dat" using 1:2 via a,b

#plot "means_0.dat" using 1:2 with points pointtype 7 lc 1 title "$\\phi_{pr}$"
plot f(x) lc 7 linewidth 2 title "$\\phi_2(x)$"
replot g(x) lc 8 linewidth 2 title "$\\phi_1(x)$"

set term lua tikz size 10cm, 6cm font '\footnotesize'
set output "2-coupled-phi_typeA.tex"
replot

set terminal windows
set output