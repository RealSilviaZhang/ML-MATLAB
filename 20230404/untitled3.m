clear; clf; 
N = 70; w = 0.5*ones(1,N); eta = 0.7;
E = @(w,N) 0.5*sum((w-[1:N]/N).^2);
dEdw = @(x,t) x-t;
fprintf('W(1)=(' );
for i=1:N-1
    fprintf('%f',w(i));
end
fprintf('%f),',w(N));
fprintf('E(W(1))=%f\n', E(w,N));
tol=1.0e-7; err=2*tol; k=1;%2>1,satisfied,any #>1 is okay
while err>tol
for i=1:N
    new_w(i) = w(i) - eta*dEdw(w(i),sol(i));
end
err=sqrt(sum((new_w-w).^2/N));
w = new_w;
fprintf('W(%d)=(',k+1);
for i=1:N-1
    fprintf('%f',w(i));
end
fprintf('%f),',w(N));
fprintf('E(W(%d))=(%16.14f\n',k+1,E(w,N));
k=k+1;
end
title('Aoxuan Zhang')