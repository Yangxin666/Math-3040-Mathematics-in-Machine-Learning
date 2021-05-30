A=zeros(1000,1);
for i=1:1000
    r1=rand();
    r2=rand();
    theta1=rand()*pi*2;
    theta2=rand()*pi*2;
    l(i)=sqrt((r1*cos(theta1)-r2*cos(theta2)).^2+(r1*sin(theta1)-r2*sin(theta2)).^2);
    A(i,1)=l(i);
end
lbar=mean(A);
lvar=std(A).^2;
