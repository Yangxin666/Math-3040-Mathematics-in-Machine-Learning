swim=imread("swim.jpg");
[m,n,q]=size(swim);
swim=double(swim);
swim=reshape(swim,m*n,q);
[cidx,ctrs]=kmeans(swim,4);
swim=ctrs(cidx,1:3);
swim=reshape(swim,m,n,q);
swim=uint8(swim);
imshow(swim)