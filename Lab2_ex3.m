A=[1,0;1,1;1,2;1,3];
b=[0;1;4;9];
[Q,R]=qr(A);
Qtb=Q'*b;
x=R\Qtb;
norm(A*x-b)
