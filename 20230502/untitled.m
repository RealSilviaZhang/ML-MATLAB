clear; clf
p=@(u) 1./(1+exp(-u));
x = [-2 3 6 9 10]; t = [0 1 1 0 0];
plot(x,0*x+0.5,'r*','linewidth',1); hold on
plot(x,t,'bo','linewidth',3);
m=2;
%u=m*(x-4);
w10=m*(-0.5); w1=m; u=w10+w1*x;
plot(x,u,'ro-','linewidth',1);
y1=p(u);
plot(x,y1,'go-','linewidth',1);
m=2;
%u=m*(x-7);
w20=m*(-7.5); w2=m; u=w20+w2*x;
plot(x,u,'bo-','linewidth',1);
y2=p(u);
plot(x,y2,'mo-','linewidth',1);
z=3*(-0.4+y1-y2);
plot(x,z,'ko-','linewidth',1);
plot(x,p(z),'ko-','linewidth',3);
grid on
axis([x(1) x(end) -1.1 1.1])
title('Aoxuan Zhang')