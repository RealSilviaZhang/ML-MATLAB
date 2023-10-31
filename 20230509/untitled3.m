clear;clf
X = [2 3 5 6 8 9]; T = [0 0 1 1 0 0];
subplot(2,1,1)
plot(X,T,'bo'); hold on; grid on
p = @(u) 1./(1+exp(-u));
Dp = @(u) exp(-u)./(1+exp(-u)).^2;
E = @(y,t) sum(0.5*(y-t).^2)/6;
w = 3*(rand(2,2)-0.5); v = rand(1,3);
Tol = 1.0e-7; eta = 0.1;
MaxIter = 1.0e6; n = 1; Difference = Tol*2;
E1 = 1000;
while Difference>=Tol && n <=MaxIter
for m = 1:length(T)
x = [1 X(m)]';
uh = w*x;
z = p(uh);
z = [1;z];
uo = v*z;
y(m) = p(uo);
dEdv = (y(m)-T(m))*Dp(uo)*z';
dEdw = ((y(m)-T(m))*Dp(uo))*(Dp(uh).*v(2:end)')*x';
v = v-eta*dEdv;
w = w-eta*dEdw;
end
for m = 1:length(T)
x = [1 X(m)]';
uh = w*x;
z = p(uh);
z = [1;z];
uo = v*z;
y(m) = p(uo);
end
E2 = E(y,T);
ET(n)=E2;
Difference = abs(E2-E1);
E1 = E2; n = n+1;

if (mod(n,50) == 0)
subplot(2,1,1)
plot(X,y,'k-');
pause(0.01);

fprintf('y(%d)={%f,%f,%f,%f,%f,%f}, E(W,X)=%f \n', ...
n, y(1), y(2), y(3), y(4), y(5), y(6), E1);
end
end
plot(X,y,'r-','linewidth',3)
fprintf('y(%d)={%f,%f,%f,%f,%f,%f}, E(W,X)=%f \n', ...
n, y(1), y(2), y(3), y(4), y(5), y(6), E1);
subplot(2,1,2)
plot(ET,'o-')
title('Aoxuan Zhang');
