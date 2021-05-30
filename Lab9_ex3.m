data=csvread("faithful_data.csv",1,1);
data=normalize(data,'range');
figure(1);
plot(data(:,1),data(:,2),'o')
cluster=kmeans(data,2);
c1=find(cluster==1);
c2=find(cluster==2);
center(1,1:2)=mean(data(c1,1:2));
center(2,1:2)=mean(data(c2,1:2));
figure(2);
plot(data(c1,1),data(c1,2),'b.','Markersize',15);
hold on 
plot(data(c2,1),data(c2,2),'r.','Markersize',15);
plot(center(1,1),center(1,2),'c.','Markersize',35);
plot(center(2,1),center(2,2),'m.','Markersize',35);