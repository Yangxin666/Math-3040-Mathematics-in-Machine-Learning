file=fopen('hailstone_data.txt','wt');
for n=1:150
    m=n;
    count=0;
    while (m~=1)
        if (mod(m,2)==0)
            m=m/2;
        else
            m=m*3+1;
        end 
        count=count+1;
    end
    fprintf(file, '%d. %d\n',n,count);
end
fclose(file);
h=load('hailstone_data.txt');
plot(h(:,1),h(:,2),'o')

