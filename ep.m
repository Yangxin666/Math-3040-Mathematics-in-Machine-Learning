function p= ep(b,m,x,y)
p(1)=sum((-2).*(y-b-m.*x));
p(2)=sum(x.*(-2).*(y-b-m.*x));
end

