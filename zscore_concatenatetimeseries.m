
%load('/deep/uddin/Collaborators/NKI_data/Final_data/GSbeta_scrubbed/NoDSMdiagnosis/SchaeferParcellation/SchaeferROIorder.mat')
load('/deep/uddin/Collaborators/NKI_data/Final_data/GSbeta_scrubbed/NoDSMdiagnosis/SchaeferParcellation/SchaeferROIorder.mat')
%Files were re-named to 'subj_##' 
files = dir('s*')

for i = 1:length(files)
    
    a = load(files(i).name);
    
    a = zscore(a);
    
    
    
    %%change network order
    for r = 1:length(x)
        
        number = x(r,:);  
        
        newa(:,r) = a(:,number); 
    end
    
    
    
    
    
    
%     c = corr(newa);
%     
%     c(1:400+1:400^2) = 0;
%     
%     c = squareform(c);
    
    
    if i == 1
        all = newa;
    else 
        all = vertcat(all,newa);
        save('all.mat','all')
    end
end

        