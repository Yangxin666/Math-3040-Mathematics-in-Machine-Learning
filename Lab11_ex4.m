I=imread("casablanca.png");
[m,n]=size(I);
A=double(I); %: A is a real copy of I.
[U,S,V]=svd(A);
svec=diag(S);
svec=svec.^2;
figure(1);
plot(1:length(svec),svec,'bo-');
k=10;
I2=U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
I2_min=min(min(I2));
I2_max=max(max(I2));
I2=255*(I2-I2_min)/(I2_max-I2_min);
I2=uint8(I2);
figure(2);
imshow(I2);
k=20;
I2=U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
I2_min=min(min(I2));
I2_max=max(max(I2));
I2=255*(I2-I2_min)/(I2_max-I2_min);
I2=uint8(I2);
figure(3);
imshow(I2);

