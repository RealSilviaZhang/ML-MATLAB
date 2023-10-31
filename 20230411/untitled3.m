clear; clf
p=@(u) 1./(1+exp(-u));
dp=@(u) exp(-u)./(1+exp(-u)).^2;
x = [-5 -3 1 4 7]; t = [0 0 0 1 1];
plot(x,0*x+0.5,'ko','linewidth',3); hold on
plot(x,t,'bo','linewidth',3);
%u=1*(x-2.5);
w0=-2.5; w=1;
u=w0+w*x;
plot(x,u,'ro-','linewidth',3);
y=p(u);
plot(x,y,'go-','linewidth',3);
grid on
axis([-6 8 -0.1 1.1])