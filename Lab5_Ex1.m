a=-2;
b=2;
%:Choose a random point from [-2,2]*[-2,2]
x=(b-a).*rand(1,1)+a;
r=0.05;
tol=0.001;
while tol<abs(fp(x))
    %:update x 
    x=x-r*fp(x);
    x
    fx(x)
    fp(x)
end
%:report final x,fx(x),fp(x)
finalx=x;
finalfx=fx(x);
finalfp=fp(x);
fplot(@fx, [-2 2])