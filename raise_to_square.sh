#!/bin/bash
#Build up of a square wave sound
#Sum of odd sinosodials adding one after another and tend to a square wave
#IE:
#Sum 1/n sin(nx) [n=1,3,5,7...]
#

#Fundamental frequency (hz)
fund=110

#Sox command: 
#play [null input device -n] [channels -c1] synth [num of seconds] [amplitude] sin <frequency> 
command="play -n -c1 synth 1 "
gplotting="plot ";
oplotting="";

idx=1
while true; do
 frac=`echo "1/$idx"|bc -l`;
 note=`echo "($fund*$idx)"|bc -l`;

 gplotting="$gplotting ($frac)*sin(x*$idx)"
 command="$command $frac sin $note "
 idx=`echo "$idx +2"|bc -l`
 echo $gplotting | gnuplot -p

`$command > /dev/null 2>&1`
 gplotting="$gplotting, "

done
