clear; clf
p=@(u) 1./(1+exp(-u));
x = [-2 3 6 9 10]; t = [1 1 0 1 1];
plot(x,0*x+0.5,'r*','linewidth',1); hold on
plot(x,t,'bo','linewidth',3);
m=1;
%u=m*(x-4);
w10=m*(-4); w11=m; u1=w10+w11*x;
plot(x,u1,'ro-','linewidth',1);
z1=p(u1);
plot(x,z1,'go-','linewidth',1);
m=1;
%u=m*(x-7);
w20=m*(-7); w21=m; u2=w20+w21*x;
plot(x,u2,'bo-','linewidth',1);
z2=p(u2);
plot(x,z2,'mo-','linewidth',1);
v0=1.2;v1=-3;v2=3;
%z=-3*(-0.4+y1-y2);
uout=v0+v1*z1+v2*z2;
y=p(uout);
plot(x,uout,'ko-','linewidth',1);
plot(x,y,'ko-','linewidth',3);
grid on
axis([x(1) x(end) -1.1 1.1])
title('Aoxuan Zhang')