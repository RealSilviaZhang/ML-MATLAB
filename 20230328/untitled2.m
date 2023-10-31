clear;
E = @(x,y) 3*(x-2)^2+2*(y-3)^2+3;
dEdw1 = @(x,y) 6*(x-2);
dEdw2 = @(x,y) 4*(y-3);
w1(1) = 8; w2(1) = 10; eta = 0.1;
fprintf('(w1(1), w2(1)) = (%f, %f),E(w1(1),w2(1))=%f \n', ...
    w1(1),w2(1),E(w1(1),w2(1)));
for i=1:10
w1(i+1) = w1(i) - eta*dEdw1(w1(i),w2(i));
w2(i+1) = w2(i) - eta*dEdw2(w1(i),w2(i));
fprintf('(w1(%d), w2(%d))=(%f, %f),E(w1(%d),w2(%d))=%f\n', ...
i+1,i+1,w1(i+1),w2(i+1),i+1,i+1,E(w1(i+1),w2(i+1)));
end