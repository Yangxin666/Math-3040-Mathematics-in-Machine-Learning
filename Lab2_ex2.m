A=[1,0;1,1;1,2;1,3];
b=[0;1;4;9];
AtA=A'*A;
Atb=A'*b;
[L,U,P]=lu(AtA);
z=P'\Atb;
y=L\z;
x=U\y;
norm(A*x-b)