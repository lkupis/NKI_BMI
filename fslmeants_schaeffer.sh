#script to select files you want from folder (cogflex data) and put into dpabi format of funimg. 
echo "Reading file list"

#for f in $(</deep/uddin/work/Lauren/fist_cfist/cfist/tdsubjects.txt)
for f in $(</deep/uddin/work/Lauren/fist_cfist/fist/subjects.txt)
do
	echo $count	
	((count += 1))
	echo "${f}"
        filename="${f##*/}"
	fi="${filename%%.*}"
	#fname="$(echo $fi | awk '{print $1}' | cut -c1-19)"
	fname="$(echo $fi | awk '{print $1}' | cut -c1-16)" #cFST
	cd /deep/uddin/work/Lauren/fist_cfist/fist/task2/5PowerFD_FunImgARWCFSB/$fname/
	#mkdir $fname
        #chmod 777 $fname'_4DVolume.nii'
	#cd /deep/uddin/work/Lauren/fist_cfist/cfist/Rest/FunImg/$fname/
	pwd
	fslmeants -i $fname'_4DVolume.nii' -o Schaeffer100new.txt --label=/deep/uddin/work/Lauren/fist_cfist/schaeffer/schaeffer_3mm_100.nii.gz
	#rm 'adespike_'$fname'.nii'
	#cp /deep/uddin/work/In_House_Data/FIST/$fname/Structural_Filtered/$fname"_struct_filt.nii" /deep/uddin/work/Lauren/fist_cfist/fist/task4/T1Img/$fname/
	done

