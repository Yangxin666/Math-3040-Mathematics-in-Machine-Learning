data=csvread("glass_data.csv",1,0);
A=data(:,2:end-1);
mu=mean(A);
A=A-mu;
[U,S,V]=svd(A);
svec=diag(S);
svec=svec.^2;
figure(1);
plot(svec)
y=[0.0;cumsum(svec)]/sum(svec);
figure(2);
plot(0:9,y)