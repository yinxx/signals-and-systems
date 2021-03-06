clear
clc

load protoh

w=linspace(-pi,pi,1024);
H=fftshift(fft(h,1024));

%after analysis and considering table 5.2 p392
l=length(h);
L=[1:l];

n1=[-(l-1)/2:(l-1)/2];
syms n wc hn

hn=sin(wc*n)/(pi*n)
hnw=subs(hn,wc,pi/5);
hs=subs(hnw,n,n1);

figure(1)

subplot(411)
plot(n1,h)
title('impulse responce');

subplot(412)
plot(n1,hs)
title('impulse responce after analysis');

subplot(413)
plot(w,abs(H));
grid
title('magnitude H')

subplot(414)
plot(w,angle(H));
title('phase H')

return
