A=[1,2,3;4,5,6;7,8,9];
b1=[10;30;50];
b2=[10;30;51];
x1=A \ b1;
norm(A*x1-b1)
x2=A \ b2;
norm(A*x2-b2)