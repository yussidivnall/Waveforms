#!/bin/bash
#A fundamantal frequency is at 110 hz, hence
#A second is at 220hz, A 3rd is at 330 etc
play -n -c1 synth 1.0 sin 110
play -n -c1 synth 1.0 sin 220
play -n -c1 synth 1.0 sin 330
play -n -c1 synth 1.0 sin 440
play -n -c1 synth 1.0 sin 550
play -n -c1 synth 1.0 sin 660

sleep 1
echo "No add those";
play -n -c1 synth 1.0 sin 110
play -n -c1 synth 1.0 sin 220 sin 110
play -n -c1 synth 1.0 sin 330 sin 220 sin 110
play -n -c1 synth 1.0 sin 440 sin 330 sin 220 sin 110
play -n -c1 synth 1.0 sin 550 sin 440 sin 330 sin 220 sin 110
play -n -c1 synth 1.0 sin 660 sin 550 sin 440 sin 330 sin 220 sin 110

