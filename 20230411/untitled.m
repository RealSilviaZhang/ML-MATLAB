clear;clf
p=@(u) 1./(1+exp(-u));
dp=@(u) exp(-u)./(1+exp(-u)).^2;
u=linspace(-8,8,100);
plot(u,p(u),'o-'); grid on; hold on
plot(u,dp(u),'*-')
legend('\phi(u)','\phi^\prime(u)')