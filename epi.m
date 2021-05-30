function gradi=epi(b,m,x,y,i)
gradi(1)=-2*(y(i)-b-m*x(i));
gradi(2)=-2*x(i)*(y(i)-b-m*x(i));
end

