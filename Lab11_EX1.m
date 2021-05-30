A=rand(6,4);
ATA=A'*A; %: (A'A)=A'(A)'=A'
[X,L]=eig(ATA); %: ATA=X*L*X'
x=X(:,1);
lambda=L(1,1);
norm(ATA*x-lambda*x)
norm(ATA-X'*L*X) %: ATA=X*L*X(inverse)=X*L*X'=(ATA)'=(X*L*X')'=(X')'*L'*X'=X*L*X'
%: since X is orthogonal so X's transpose= X's inverse, ATA is symmetric, L=L'
[U,S,V]=svd(A);
norm(A-U*S*V')
A3=U(:,1:3)*S(1:3,1:3)*V(:,1:3)';
norm(A3-A)