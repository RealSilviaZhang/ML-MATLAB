clear; clf
E = @(x,y,z) 3*(x-2)^2+2*(y-3)^2+4*(z-1)^2+3;
dEdw1 = @(x,y,z) 6*(x-2);
dEdw2 = @(x,y,z) 4*(y-3);
dEdw3 = @(x,y,z) 8*(z-1);

w1(1) = 8; w2(1) = 10; w3(1)=5; eta = 0.1;
plot3(w1(1), w2(1), w3(1),'r*')
fprintf('(w1(1), w2(1), w3(1)) = (%f, %f, %f),E(w1(1),w2(1), w3(1))=%f \n', ...
    w1(1),w2(1), w3(1),E(w1(1),w2(1), w3(1)));

return