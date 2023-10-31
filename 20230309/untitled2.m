clear; clf 
SI=2021320050;
x(1)=1;
x(2)=1;
for i=1:45
    x(i+2)=x(i+1)+x(i);
end
x
plot(x,'o-');hold on
plot(0*x+SI,'*-');
title('Aoxuan Zhang')