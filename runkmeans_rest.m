
load('all.mat')
 
clusters = { '4' '5' '6' }
 
for s = 1:length(clusters)
   

num = clusters{s}
number = str2num(num)


mkdir (num)
cd (num)

[idx,C,sumd,D]=kmeans(all,number,'Replicates',500,'MaxIter',5000,'Display','iter','empty','drop')

save('C.mat','C')
save('D.mat','D')
save('idx.mat','idx')
save('sumd.mat','sumd')


cd ..
end
