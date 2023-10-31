clear
x=linspace(0,2*pi,100);
plot(x,sin(x),'k--',x,cos(x),'go-'); hold on
plot(x,0.5*sin(x),'ro-')
plot(x,0.4*sin(x),'mo-')
plot(x,0.3*sin(x),'yo-')
plot(x,0.2*sin(x),'ko-')
plot(x,0.1*sin(x),'wo-')
plot(x,-0.1*sin(x),'wd:')
plot(x,-0.2*sin(x),'kd:')
plot(x,-0.3*sin(x),'yd:')
plot(x,-0.4*sin(x),'md:')
title('Aoxuan Zhang')
xlabel('x')
ylabel('y')
legend('sin(x)','cos(x)','0.5sin(x)', ...
    '-0.4*sin(x)')
grid on
axis([0 2*pi -1 1])