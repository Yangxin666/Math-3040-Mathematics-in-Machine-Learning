A=[5,7,6,5;
    7,10,8,7;
    6,8,10,9;
    5,7,9,10];
xreal=[4;3;2;1];
b=A*xreal;
[L,U,P]=lu(A);
z=P'\b;
y=L\z;
xcomputed=U\y;
norm(xcomputed-xreal)

