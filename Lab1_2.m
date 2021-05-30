F=csvread('geyser_data.csv',1,1);
plot(F(:,1),F(:,2),'o')
max(F)
min(F)
mean(F)
std(F)
bad1=find(abs(F(:,1)-3.6422)>2.8556);
bas2=find(abs(F(:,2)-71.2647)>15.1586);
good=find(abs(F(:,1)-3.6422)<=2.8556 & abs(F(:,2)-71.2647)<=15.1586);
plot(F(good,1),F(good,2),'o')