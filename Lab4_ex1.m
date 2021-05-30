A=zeros(1000,2);
B=zeros(1000,2);
C=zeros(1000,2);
for n=1:1000
    r1=rand();
    theta1=rand()*2*pi;
    A(n,:)=[r1*cos(theta1),r1*sin(theta1)];
end
for m=1:1000
    r=rand();
    r2=sqrt(r);
    theta2=rand()*2*pi;
    B(m,:)=[r2*cos(theta2),r2*sin(theta2)];
end
count=0;
while (count<1000) 
    x=rand();
    y=rand();
    if (x^2+y^2<=1)
        count=count+1;
        C(count,:)=[x,y];
    end
end
figure(1);
plot(A(:,1),A(:,2),'.')
figure(2);
plot(B(:,1),B(:,2),'.')
figure(3);
plot(C(:,1),C(:,2),'.')