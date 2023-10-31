% Newton's method
clear; clf; format long
f=@(x) x.^3+4*x.^2-10;
fp=@(x) 3^x.^2+8*x;
x=linspace(0,5,100);
plot(x,f(x)); grid on; hold on
p(1)=3; 
plot(p(1),0,'bo')
plot(p(1),f(p(1)),'r*')
for i=1:10
y=f(p(i))+fp(p(i))*(x-p(i));
plot(x,y)
p(i+1)=p(i)-f(p(i))/fp(p(i));
plot(p(2),0,'bo')
end
title('Aoxuan Zhang')
p'
length(p)-1