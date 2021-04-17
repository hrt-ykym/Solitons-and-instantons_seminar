set xrange [-100:100]
set yrange [-10:10]
set term gif animate optimize delay 2 size 480,360
set output 'soliton-antisoliton(move).gif'
u=0.8
f(x)=4*atan(sinh(u*t/sqrt(1-u*u))/(u*cosh(x/sqrt(1-u*u))))
do for [i = -500 : 500] {
   t=i*0.25
   title(t) = sprintf("t = %.3f",t) 
   plot f(x) notitle
   set title title(t) font 'Times,16' 
   }
set terminal windows
set output