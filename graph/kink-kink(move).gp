set xrange [-10:10]
set yrange [-15:15]
set term gif animate optimize delay 2 size 480,360
set output 'kink-kink(move).gif'
u=0.8
g(x)=4*atan((((x)-u*(t))/sqrt(1-u*u)))
h(x)=4*atan((((x)+u*(t))/sqrt(1-u*u))-5)
f(x)=g(x)+h(x)
do for [i = 0 : 1000] {
   t=i*0.02
   title(t) = sprintf("t = %.3f",t) 
   plot f(x) notitle
   set title title(t) font 'Times,16' 
   }
set terminal windows
set output