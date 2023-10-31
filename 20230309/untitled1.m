clear;
x(1)=1;
x(2)=1;
for i=1:12
    x(i+2)=x(i+1)+x(i);
end
x
plot(x, 'o-')
title('Aoxuan Zhang')