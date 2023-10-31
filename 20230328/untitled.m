clear; format long
E = @(x) 3*(x-2).^2+5;
dE = @(x) 6*(x-2);
x=linspace(-10,15,100);
clf; 
subplot(2,1,1)
plot(x,E(x),'k'); hold on
w(1)=4;
plot(w(1),0,'ro'); hold on
eta=0.4;
for n=1:5
w(n+1)=w(n)-eta*dE(w(n));
plot(w(n+1),0,'ro')
end
axis([-10 15 0 350])
title('Aoxuan Zhang')
subplot(2,1,2)
plot(x,E(x),'k'); hold on
w(1)=4;
plot(w(1),0,'ro'); hold on
eta=0.01;
for n=1:5
w(n+1)=w(n)-eta*dE(w(n));
plot(w(n+1),0,'ro')
end
axis([-10 15 0 350])
title('Aoxuan Zhang')