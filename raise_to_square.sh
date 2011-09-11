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
gplotting="";
oplotting="";
sum_formula=""
idx=1

while true; do
 frac=`echo "1/$idx"|bc -l`;	#=1/n
 note=`echo "($fund*$idx)"|bc -l`;	#=f*n
 sum_formula="$sum_formula ($frac)*sin(x*$idx)":
 gplotting="$gplotting ($frac)*sin(x*$idx)"
 command="$command $frac sin $note "
 idx=`echo "$idx +2"|bc -l`
 echo "Sum Formula: $sum_formula"

 #Plotting options... 
 #echo "plot $gplotting"
 #echo "plot $sum_formula; pause -1"|gnuplot -p
 echo "plot $gplotting,$sum_formula; " | gnuplot -p
 
#`$command > /dev/null 2>&1`
 sum_formula="$sum_formula +"
 gplotting="$gplotting, "

done
