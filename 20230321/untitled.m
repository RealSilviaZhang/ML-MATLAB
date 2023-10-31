% Newton's method
clear; clf; format long
f=@(x) x.^2+10*cos(x);
fp=@(x) 2*x-10*sin(x);
x=linspace(-5,10,100);
plot(x,f(x)); grid on; hold on
p(1)=3; 
plot(p(1),0,'bo')
plot(p(1),f(p(1)),'r*')
tol=1.0e-5; err=2*tol;
i=1;
while err>tol
y=f(p(i))+fp(p(i))*(x-p(i));
plot(x,y)
p(i+1)=p(i)-f(p(i))/fp(p(i));
plot(p(i+1),0,'bo')
err=abs(p(i+1)-p(i));
i=i+1;
end
title('Aoxuan Zhang')
p'
iteration = length(p)-1

% ans =
% 
%   -3.000000000000000
%   -3.196113359006915
%   -3.162958676673585
%   -3.161950957975875
%   -3.161950024711056
% 
% 
% iteration =
% 
%      4
% ans =
% 
%   -2.000000000000000
%   -1.968295860735481
%   -1.968872752743465
%   -1.968872937819808
% 
% 
% iteration =
% 
% %      3
% ans =
% 
%    2.000000000000000
%    1.968295860735481
%    1.968872752743465
%    1.968872937819808
% 
% 
% iteration =
% 
%      3
% 
% ans =
% 
%    3.000000000000000
%    3.196113359006915
%    3.162958676673585
%    3.161950957975875
%    3.161950024711056
% 
% 
% iteration =
% 
%      4
