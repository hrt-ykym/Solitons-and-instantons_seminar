set xrange [-15:15]
set yrange [-0.5:3]
set term gif animate optimize delay 2 size 480,360
set output '2-soliton.gif'
do for [i = -150 : 150] {
   t=i*0.025
   title(t) = sprintf("t = %.3f",t) 
   plot 2/(cosh(x-4*t)**2)+1/(cosh(x+4*t)**2) notitle
   set title title(t) font 'Times,16' 
   }
set terminal windows
set output