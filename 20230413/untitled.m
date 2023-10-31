% 20 midterm exam
clear; clf
p=@(u) 1./(1+exp(-u));
dp=@(u) exp(-u)./(1+exp(-u)).^2;
x = [-2 -1 0 1 2]; t = [0 0 1 1 1];
plot(x,0*x+0.5,'r-','linewidth',3); hold on
plot(x,t,'bo','linewidth',3);
w0=-1; w=1;
u=w0+w*x;
y=p(u);
plot(x,y,'go-','linewidth',3);
grid on
axis([-2.2 2.2 -0.1 1.1])
title('Aoxuan Zhang')