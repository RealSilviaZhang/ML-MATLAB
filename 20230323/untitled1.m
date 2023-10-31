clear; clf; format long
E = @(x) 3*(x-2).^2+5;
dE = @(x) 6*(x-2);
x=linspace(-1,5,100);
plot(x,E(x),'k'); hold on
axis([-1 5 0 35])
title('Aoxuan Zhang')
w(1)=4;
plot(w(1),0,'ro')
eta=0.1;
for n=1:20
w(n+1)=w(n)-eta*dE(w(n));
plot(w(n+1),0,'ro')
end
w