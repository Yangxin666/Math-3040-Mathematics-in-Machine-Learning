data=csvread("ford_data.csv",1,1);
x=data(:,1);
y=data(:,2);
x=normalize(x,'range');
y=normalize(y,'range');
b=0.5;
m=0;
r=0.01;
tol=0.001;
count=0;
while tol<vecnorm(ep(b,m,x,y)) && count<500
    count=count+1;
    A=[b,m]-r*ep(b,m,x,y);
    b=A(1);
    m=A(2);
end
finalb=b
finalm=m
finale=e(b,m,x,y)
finalep=ep(b,m,x,y)
plot(x,y,'o')
hold on
%:plot the line we find represent the best solution
v=linspace(0,1);
w=finalm*v+finalb;
line(v,w)