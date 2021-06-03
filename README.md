# NKI_BMI
BMI moderation project using MPlus
All analyses were conducted in MPlus. That includes both the measurement model and structural equation modeling. 
Please note the code is just one instance for each analysis. The code was repeated and edited for each interaction, plot, etc.. 
The Mplus scripts are included in each folder. To run these you will need access to MPLUS and can paste that code into the MPLUS GUI. 

The csv file used in each MPLUS analysis is also provided: SEM_CFA_new.csv.zip

Here are steps for the full analysis:

1. Pre-processing
  The pre-processing code is not included since all pre-processing was conducted using DPABI. Please reference the manuscript for pre-processing steps (Kupis_NKI_BMI_Vancouver.pdf). 
2. ROI time series
  Next, we used schaefer parcellation to extract the time series for 400 ROIs for each individual subject. This was done using the fslmeants_schaeffer.sh script. 
3. Once the time series for all participants are extracted, the next step is to concatenate the time series for each individual subject into one group matrix. This is done using zscore_concatenatetimeseries.m. 
4. Once the group matrix is obtained, use runkemans_rest.m to obtain the CAPs or brain states
5. After kmeans is conducted, output will include a C file and idx file. The 'C' file is used to create the CAP matrix
6. Next, the Indsubj_cluster_assignments.m is used to convert the CAP data into individual subject level
7. To obtain the CAP metrics including dwell time, frequency, and transitions, the last script used is vector_stats_allsubjects.m. This matfile calls a function called icatb_dfnc_statevector_stats.m


Statistical Analysis Steps:

1. Confirmatory Factor Analysis- The code for this is included in teh Measurement_Model folder. This was done first to obtain the latent factors or dependent variables used in the analyses
2. Interactions- First the moderation analysis was conducted to test for significant interactions between BMI and CAP dynamics (dwell time, transition, and frequency) for each CAP. There were 5 CAPs total in this study. Covariates are included in the structural equation models to control for their effects. 
3. Next Interaction_Plots was used to create the interaction at simple slopes of BMI. In this analysis three levels of BMI were chosen (high, average, and low BMI). 
4. Johnson_Neyman_Plot was conducted next to test for where the levels of significance were for each interaction on the basis of BMI. 
5. The simple slope significance values were also computed using the code in the Simple Slopes folder
6.  Following non-significant interactions, the Main_Effects were computed. 
7.  Next, a mediation model was computed using code that can be observed in the Mediation folder
8.  We also tested sensitivity of the results by removing outliers in BMI and re-computing the results. The outliers were identified in SPSS and the same analysis steps were conducted as depicted above
9.  Next, we also tested if the main results remained after bootstrapping. Code for this analysis is within the Bootstrap folder. 


If you have any questions please contact Lauren at lbk48@miami.edu. Thank you!
