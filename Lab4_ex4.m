x=0:.001:25;
norm1=normpdf(x,10,1);
figure(1);
plot(x,norm1)
hold on
norm2=normpdf(x,13,3);
plot(x,norm2)
fun=norm1-norm2;
n=1;
while (fun(n)*fun(n+1)>0)
    n=n+1;
end
xapproximated=n/1000-0.001; %n has a linear relationship with the value x 
X1=normrnd(10,1,[1,1000]);
X2=normrnd(13,3,[1,500]);
h1=histcounts(X1,0:25);
h2=histcounts(X2,0:25);
figure(2);
bar([h1',h2'],'stacked');
X=[X1,X2];
count=0;
class1=[];
class2=[];
for n=1:1500
    pdf1=normpdf(X(n),10,1);
    pdf2=normpdf(X(n),13,3);
    if (pdf1>pdf2) 
        count=count+1;
        class1=[class1,X(n)];
    else 
        class2=[class2,X(n)];
    end
end 
score=count/1500;
%: We notice that some values less than 10 get assigned to class 2. This is because: 
%: from the graph of pdf1 & pdf2, we can tell for any x(i) in [5, 7.5], obviously, pdf1<pdf2

