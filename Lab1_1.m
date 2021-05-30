type 'Scrambled.txt'
A=load('Scrambled.txt');
[m,n]=size(A);
B=load('correct.txt');
norm(A-B)
A(6,4)=64;
A=abs(A);
A=floor(A);
A([2,4],:)=A([4,2],:);
A(:,[3,5])=A(:,[5,3]);
norm(A-B)