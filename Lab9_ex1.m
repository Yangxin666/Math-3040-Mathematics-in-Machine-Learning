table=readtable("pollution_data.csv");
names=table{:,1};
data=table{:,[3,7]};
data=normalize(data,'range'); 
pd=pdist(data); 
cs=linkage(pd,'average'); 
dendrogram(cs,41,'orientation','left','labels',names)
