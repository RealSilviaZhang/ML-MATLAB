clear; clf 
SI=2021320050;
x(1)=1;
x(2)=1;
flag=0;
i=1;
while flag ==0
    x(i+2)=x(i+1)+x(i);
if (SI - x(i+2))*(SI+x(i+1))<=0
    flag=1;
end
i=i+1
end
x
plot(x,'o-');hold on
plot(0*x+SI,'*-');
title('Aoxuan Zhang')