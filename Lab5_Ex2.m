x=-3+6*rand(1,2);
r=0.05;
tol=0.001;
%:here we use vecnorm since the we want to calculate norm of vector not
% matrix
while tol<vecnorm(fp(x(1),x(2)))
    x=x-r*fp(x(1),x(2));
    x
    fx(x(1),x(2))
    fp(x(1),x(2))
end
finalx=x;
finalfx=fx(finalx(1),finalx(2));
finalfp=fp(finalx(1),finalx(2));
figure(1)
fsurf(@fx, [-2 2 -2 2])
figure(2)
fcontour(@fx,[-2 2 -2 2])