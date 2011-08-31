#!/bin/bash
fund=110


command="play -n -c1 synth 1 "

idx=1
while true; do
 frac=`echo "1/$idx"|bc -l`;
 note=`echo "($fund*$idx)"|bc -l`;
 echo "fraction: $frac note: $note"
 command="$command $frac sin $note "
 echo $command
 idx=`echo "$idx +2"|bc -l`
 `$command`
 sleep 1
done
