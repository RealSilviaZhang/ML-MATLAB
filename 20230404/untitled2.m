% clear; clf; 
% N = 10; w = 0.5*ones(1,N); eta = 0.7;
% E = @(w,N) 0.5*sum((w-[1:N]/N).^2);
% dEdw = @(x,t) x-t;
% fprintf('W(1)=(%f,%f,%f,%f,%f,%f,%f,%f,%f,%f),E(W(1))=%f\n' ...
% ,w,E(w,N));
% for k=1:10
% for i=1:N
% new_w(i) = w(i) - eta*dEdw(w(i),i/N);
% end
% w = new_w;
% fprintf('W(%d)=(%f,%f,%f,%f,%f,%f,%f,%f,%f,%f),E(W(%d))=%16.14f\n'...
% ,k+1,w,k+1,E(w,N));
% end
% title('Aoxuan Zhang')
clear; clf; 
N = 10; w = 0.5*ones(1,N); eta = 0.7;
E = @(w,N) 0.5*sum((w-[1:N]/N).^2);
dEdw = @(x,t) x-t;
fprintf('W(1)=(%f,%f,%f,%f,%f,%f,%f,%f,%f,%f),E(W(1))=%f\n' ...
,w,E(w,N));
tol=1.0e-6; err=2*tol; k=1;%2>1,satisfied,any #>1 is okay
while err>tol
for i=1:N
new_w(i) = w(i) - eta*dEdw(w(i),i/N);
end
err=sqrt(sum((new_w-w).^2/N));
w = new_w;
fprintf('W(%d)=(%f,%f,%f,%f,%f,%f,%f,%f,%f,%f),E(W(%d))=%16.14f\n'...
,k+1,w,k+1,E(w,N));
k=k+1;
end
title('Aoxuan Zhang')