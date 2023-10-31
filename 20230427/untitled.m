clear; clf
p=@(u) 1./(1+exp(-u));
%dp=@(u) exp(-u)./(1+exp(-u)).^2;
x = [2 3 5 6 8 9]; t = [0 0 1 1 0 0];
plot(x,0*x+0.5,'ko','linewidth',1); hold on
plot(x,t,'bo','linewidth',1);
m=1;
%u=1*(x-4);
w10=m*(-4); w1=m;
u=w10+w1*x;
plot(x,u,'ro-','linewidth',1);
y1=p(u);
plot(x,y1,'go-','linewidth',1);

m=1;
%u=m*(x-7);
w20=m*(-7); w2=m;
u=w20+w2*x;
plot(x,u,'bo-','linewidth',1);
y2=p(u);
plot(x,y2,'mo-','linewidth',1);
z=3*(-0.4+y1-y2);
plot(x,z,'ko-','linewidth',1);
plot(x,p(z),'ko-','linewidth',1);
grid on
axis([x(1) x(end) -0.1 1.1])
title('Aoxuan Zhang')