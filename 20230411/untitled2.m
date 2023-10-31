clear;clf
p=@(u) 1./(1+exp(-u));
dp=@(u) exp(-u)./(1+exp(-u)).^2;
x = [-2 -1 0 1 2]; t = [0 0 1 1 1];
plot(x,0*x+0.5,'ko','linewidth',3);hold on
plot(x,t,'bo','linewidth',3);
%u=5*(x+0.5);
w0=2.5; w=5;
u=w0+w*x
% for i=1:5
%     u(i)=w0+w*x(i);
% end
plot(x,u,'ro-','linewidth',3);
y=p(u);
plot(x,y,'go-','linewidth',3);
grid on
axis([-2 2 -0.1 1.1])