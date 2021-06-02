files = dir('GIFT_ICA_dfnc_sub*')
for i = 1:length(files)
    load(files(i).name)
    if i == 1
        all = FNCdyn;
    else 
        all = vertcat(all,FNCdyn);
    end
    
    save('all.mat','all')
end
/