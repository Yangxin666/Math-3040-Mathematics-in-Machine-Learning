A=zeros(10000,1);
for i=1:10000
    a=rand();
    b=rand();
    r1=sqrt(a);
    r2=sqrt(b);
    theta1=rand()*pi*2;
    theta2=rand()*pi*2;
    l(i)=sqrt((r1*cos(theta1)-r2*cos(theta2)).^2+(r1*sin(theta1)-r2*sin(theta2)).^2);
    A(i,1)=l(i);
end
histogram(A)
histogram(A,'Normalization','pdf')
hold on
d=linspace(0.0,2.0,101);
p=d.*(4.*acos(d/2)-(d.*sqrt(4-d.^2)))/pi;
plot(d,p)


