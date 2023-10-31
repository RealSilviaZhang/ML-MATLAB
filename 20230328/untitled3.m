clear;clf
E = @(x,y) 3*(x-2)^2+2*(y-3)^2+3;
dEdw1 = @(x,y) 6*(x-2);
dEdw2 = @(x,y) 4*(y-3);
Nx=50; Ny=50;
x=linspace(-6,10,Nx);
y=linspace(-5,11,Ny);
for i=1:Nx
    for j=1:Ny
        CF(i,j)=E(x(i),y(j));
    end
end
% mesh(x,y,CF); hold on;
contour(x,y,CF',30); hold on; axis image
axis([x(1) x(Nx) y(1) y(Ny) -10 350])
w1(1) = 8; w2(1) = 10; eta = 0.03;
plot(w1(1),w2(1),'r*')
fprintf('(w1(1), w2(1)) = (%f, %f),E(w1(1),w2(1))=%f \n', ...
    w1(1),w2(1),E(w1(1),w2(1)));
for i=1:30
w1(i+1) = w1(i) - eta*dEdw1(w1(i),w2(i));
w2(i+1) = w2(i) - eta*dEdw2(w1(i),w2(i));
fprintf('(w1(%d), w2(%d))=(%f, %f),E(w1(%d),w2(%d))=%f\n', ...
i+1,i+1,w1(i+1),w2(i+1),i+1,i+1,E(w1(i+1),w2(i+1)));
plot(w1(i+1),w2(i+1),'r*')
end
title('Aoxuan Zhang')