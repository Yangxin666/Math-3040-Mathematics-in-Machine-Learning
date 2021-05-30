[X,Y]=meshgrid(linspace(-3,3,7),linspace(-3,3,7));
[X,Y]=meshgrid(linspace(-3,3,7),linspace(-3,3,7));
Z=mountain(X,Y);
col=max(max(Z));
[maxz,maxcol]=max(max(Z));
[maxz,maxraw]=max(max(Z,[],2));
