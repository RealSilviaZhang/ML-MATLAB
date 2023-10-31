clear; clf; 
E = @(x,y,z) 3*(x-2)^2+2*(y-3)^2+4*(z-1)^2+3;
dEdw1 = @(x,y,z) 6*(x-2);
dEdw2 = @(x,y,z) 4*(y-3);
dEdw3 = @(x,y,z) 8*(z-1);
for k=1:100
w1(1) = 2+10*(rand(1)-0.5); 
w2(1) = 3+10*(rand(1)-0.5);  
w3(1) = 1+10*(rand(1)-0.5);  
eta = 0.1;
plot3(w1(1), w2(1), w3(1), '*'); hold on
% fprintf('(w1(1), w2(1), w3(1) ) = (%f, %f, %f),E(w1(1),w2(1),w3(1))=%f \n', ...
%     w1(1),w2(1),w3(1),E(w1(1),w2(1),w3(1)));
for i=1:10
w1(i+1) = w1(i) - eta*dEdw1(w1(i),w2(i),w3(i));
w2(i+1) = w2(i) - eta*dEdw2(w1(i),w2(i),w3(i));
w3(i+1) = w3(i) - eta*dEdw3(w1(i),w2(i),w3(i));
% fprintf('(w1(%d), w2(%d), w3(%d))=(%f, %f, %f),E(w1(%d),w2(%d),w3(%d))=%f\n', ...
% i+1,i+1,i+1, w1(i+1),w2(i+1),w3(i+1),i+1,i+1,i+1,E(w1(i+1),w2(i+1),w3(i+1)));
plot3(w1(i+1), w2(i+1),w3(i+1),'r*')
quiver3(w1(i),w2(i),w3(i),-eta*dEdw1(w1(i),w2(i),w3(i)), ...
    -eta*dEdw2(w1(i),w2(i),w3(i)),-eta*dEdw3(w1(i),w2(i),w3(i)),0)
end
box on
pause(0.01)
end
plot3(2,3,1,'bo','linewidth',5)
title('Aoxuan Zhang')