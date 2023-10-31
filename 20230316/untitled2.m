% Newton's method
clear; clf; format long
f=@(x) x.^2-3;
fp=@(x) 2*x;
x=linspace(0,5,100);
plot(x,f(x)); grid on; hold on
p(1)=1; 
plot(p(1),0,'bo')
plot(p(1),f(p(1)),'r*')
tol=1.0e-15; err=2*tol;
i=1;
while err>tol
y=f(p(i))+fp(p(i))*(x-p(i));
plot(x,y)
p(i+1)=p(i)-f(p(i))/fp(p(i));
plot(p(i+1),0,'bo')
err=abs(p(i+1)-p(i));
i=i+1;
end
title('Aoxuan Zhang')
p'
length(p)-1