#!/bin/bash

half="0.5"
third=`echo "1/3"|bc -l`
quarter=`echo "1/4"|bc -l`
fifth=`echo "1/5"|bc -l`
sixth=`echo "1/6"|bc -l`
seventh=`echo "1/7"|bc -l`
eigth=`echo "1/8"|bc -l`
nineth=`echo "1/9"|bc -l`

fund=110
#Saw
#play -n -c1 synth 1 sin 110 $half sin 220 $third sin 330 $quarter sin 440 $fifth sin 550 $sixth sin 660 $seventh sin 770 $eigth sin 880 $nineth sin 990
#plot sin(x)+sin(2*x)/2 + sin(3*x)/3...

#Square
play -n -c1 synth 1 sin 110 $third sin 330 $fifth sin 550 $seventh sin 770 $nineth sin 990
#plot sin(x)+sin(3*x)/3+sin(5*x)/5...
