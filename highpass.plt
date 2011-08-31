# gnuplot file
set title 'SoX effect: lowpass gain=0 frequency=100 Q=0.707107 (rate=48000)'
set xlabel 'Frequency (Hz)'
set ylabel 'Amplitude Response (dB)'
Fs=48000
b0=4.244336814021699e-05; b1=8.488673628043399e-05; b2=4.244336814021699e-05; a1=-1.981488509144573e+00; a2=9.816582826171341e-01
o=2*pi/Fs
H(f)=sqrt((b0*b0+b1*b1+b2*b2+2.*(b0*b1+b1*b2)*cos(f*o)+2.*(b0*b2)*cos(2.*f*o))/(1.+a1*a1+a2*a2+2.*(a1+a1*a2)*cos(f*o)+2.*a2*cos(2.*f*o)))
set logscale x
set grid xtics ytics
set key off
plot [f=10:Fs/2] [-35:25] 20*log10(H(f))
pause -1 'Hit return to continue'
