
%%need to do each folder seperately because icab_dfnc_statevector_stats
%%does not accept a variable for name of file


k = 5  %% number of states

cd /deep/uddin/work/Lauren/NKI/schaeffer/BMI/GS_regressed/kmeans/5/cluster_assignments/

files = dir('*mat')

for i = 1:length(files)
    load(files(i).name);
    [F, TM, MDT, NT] = icatb_dfnc_statevector_stats(all_clusters, k);  %%%all_clusters is name of individual subject mat files
    Fall(i,:) = F(1,:);
    MDTall(i,:) = MDT(1,:);
    NTall(i,:) = NT(1,:);
    x = TM(:)';
    TMall(i,:) = x(1,:);
end
mkdir vectorstats
cd vectorstats
save('Frequency.mat','Fall')
save('Dwell_time.mat','MDTall')
save('Transitions.mat','NTall')
save('TMall.mat','TMall')


