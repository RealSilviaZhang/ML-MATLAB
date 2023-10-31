clear; clear
E = @(x) 3*(x-2).^2+5;

x=linspace(-1,5,100);
plot(x,E(x),'k')
axis([-1 5 0 35])
title('Aoxuan Zhang')