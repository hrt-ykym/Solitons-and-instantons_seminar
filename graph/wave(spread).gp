set xrange [-5:15]
set yrange [-0.5:10]
set term gif animate optimize delay 10 size 480,360
set output 'wave(spread)2.gif'
do for [i = 20 : 100] {
   t=i*0.001
   title(t) = sprintf("t = %.3f",t) 
   plot 0.1/(cosh(x-100*t)**2)/t notitle
   set title title(t) font 'Times,16' 
   }
set terminal windows
set output