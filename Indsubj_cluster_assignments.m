%% seperate individuals cluster assignments

numsubj = 253    %%%must change!
numwindows = 399   %%%must change!
load ('idx.mat')
mkdir('cluster_assignments')
cd cluster_assignments

for i = 1:numsubj
    all_clusters = idx((((i-1)*numwindows)+1):(i*numwindows));
    if i <10
    save (strcat('cluster_assignments_s_00', num2str(i),'.mat'),'all_clusters')
    elseif (i>9) && (i<100)
    save (strcat('cluster_assignments_s_0', num2str(i),'.mat'),'all_clusters')
    else i > 100
    save (strcat('cluster_assignments_s_', num2str(i),'.mat'),'all_clusters')    
    end
    
end


