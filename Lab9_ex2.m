data=csvread("faithful_data.csv",1,1);
figure(1);
plot(data(:,1),data(:,2),'o') 
center=[2,60;4,70];
for i=1:272
    if norm(data(i,:)-center(1,:))<norm(data(i,:)-center(2,:))
        cluster(i)=1;
    else 
        cluster(i)=2;
    end
end
c1=find(cluster==1);
c2=find(cluster==2);
figure(2);
plot(data(c1,1),data(c1,2),'b.','Markersize',15)
hold on
plot(data(c2,1),data(c2,2),'r.','Markersize',15)