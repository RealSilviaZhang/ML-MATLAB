clear;
X = [2 3 5 6 8 9]; T = [0 0 1 1 0 0];
w = [-5 1;6.5 -1]; v = [-1 1 1];
Tol = 1.0e-5; eta = 0.1;
MaxIter = 1.0e6; n = 1; Difference = Tol*2;
p = @(u) 1./(1+exp(-u));
Dp = @(u) exp(-u)./(1+exp(-u)).^2;
E = @(y,t) sum(0.5*(y-t).^2)/6;
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
Difference = abs(E2-E1);
E1 = E2;
n = n+1;
if (mod(n,200) == 0)
fprintf('y(%d)={%f,%f,%f,%f,%f,%f}, E(W,X)=%f \n', ...
n, y(1), y(2), y(3), y(4), y(5), y(6), E1);
end
end
fprintf('y(%d)={%f,%f,%f,%f,%f,%f}, E(W,X)=%f \n', ...
n, y(1), y(2), y(3), y(4), y(5), y(6), E1);