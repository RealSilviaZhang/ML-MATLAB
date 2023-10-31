clear; clf; hold on
N = 10; w = rand(1,N); eta = 0.7;
A=w;sol=rand(1,N);
E = @(w) 0.5*sum((w-sol).^2);dEdw = @(x,t) x-t;
fprintf('W(1)=(');
for i=1:N-1
fprintf('%f,',w(i));
end
fprintf('%f),',w(N));fprintf('E(W(1))=%f\n',E(w));
tol=1.0e-5; err=2*tol; k=1;
while err>tol
for i=1:N
new_w(i) = w(i) - eta*dEdw(w(i),sol(i));
end
A(k+1,:)=new_w;err=sqrt(sum((new_w-w).^2)/N);w = new_w;
fprintf('W(%d)=(',k+1);
for i=1:N-1
fprintf('%f,',w(i));
end
fprintf('%f),',w(N));
fprintf('E(W(%d))=%16.14f\n',k+1,E(w));
k=k+1;
end
for i=1:N
plot([1:k],0*[1:k]+sol(i))
end
plot(A,'.-');title('Aoxuan Zhang')