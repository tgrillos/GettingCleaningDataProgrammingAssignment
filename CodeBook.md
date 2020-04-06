# GettingCleaningDataProgrammingAssignment - Tidy Smartphone Activity Data
# Final Programming Assignment for Coursera Class "Getting and Cleaning Data"

# CODEBOOK

Data Description:

This tidy dataset is generated from the "Human Activity Recognition Using Smartphones Dataset". The data includes measurements of 30 subjects performing 6 activities. The researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The raw data can be found at the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Variables:

According to the codebook from the original dataset, "the features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

During the conversion of the raw data into a tidy dataset, the mean and standard deviation of each of these features was averaged to produce one measurement for each subject by each activity type. 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Variables Description:

 [1] "subject" - Identifies which subject performed the activity

 [2] "activity" - Identifies which of the six activities was measured

Features: All the rest of the variables are 'features' as described above. Their naming follows the pattern described above such that "tBodyAcc-mean()-X" represents the mean body acceleration in the X direction for subject i performing activity j, and so on for the rest of the features.

 [3] "tBodyAcc-mean()-X"   
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z" 
 [6] "tBodyAcc-std()-X"  
 [7] "tBodyAcc-std()-Y" 
 [8] "tBodyAcc-std()-Z" 
 [9] "tGravityAcc-mean()-X"      
[10] "tGravityAcc-mean()-Y"      
[11] "tGravityAcc-mean()-Z"     
[12] "tGravityAcc-std()-X" 
[13] "tGravityAcc-std()-Y" 
[14] "tGravityAcc-std()-Z" 
[15] "tBodyAccJerk-mean()-X"               
[16] "tBodyAccJerk-mean()-Y"               
[17] "tBodyAccJerk-mean()-Z"  
[18] "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                
[20] "tBodyAccJerk-std()-Z"                
[21] "tBodyGyro-mean()-X"                  
[22] "tBodyGyro-mean()-Y"                  
[23] "tBodyGyro-mean()-Z"                  
[24] "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                   
[26] "tBodyGyro-std()-Z"                   
[27] "tBodyGyroJerk-mean()-X"              
[28] "tBodyGyroJerk-mean()-Y"              
[29] "tBodyGyroJerk-mean()-Z"              
[30] "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"               
[32] "tBodyGyroJerk-std()-Z" 
[33] "tBodyAccMag-mean()"                  
[34] "tBodyAccMag-std()"                   
[35] "tGravityAccMag-mean()"               
[36] "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"              
[38] "tBodyAccJerkMag-std()"               
[39] "tBodyGyroMag-mean()"                 
[40] "tBodyGyroMag-std()"                  
[41] "tBodyGyroJerkMag-mean()"             
[42] "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                   
[44] "fBodyAcc-mean()-Y"                   
[45] "fBodyAcc-mean()-Z"                   
[46] "fBodyAcc-std()-X"                    
[47] "fBodyAcc-std()-Y"                    
[48] "fBodyAcc-std()-Z"                    
[49] "fBodyAcc-meanFreq()-X"               
[50] "fBodyAcc-meanFreq()-Y"               
[51] "fBodyAcc-meanFreq()-Z"               
[52] "fBodyAccJerk-mean()-X"               
[53] "fBodyAccJerk-mean()-Y"               
[54] "fBodyAccJerk-mean()-Z"               
[55] "fBodyAccJerk-std()-X"                
[56] "fBodyAccJerk-std()-Y"                
[57] "fBodyAccJerk-std()-Z"                
[58] "fBodyAccJerk-meanFreq()-X"           
[59] "fBodyAccJerk-meanFreq()-Y"           
[60] "fBodyAccJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                  
[62] "fBodyGyro-mean()-Y"                  
[63] "fBodyGyro-mean()-Z"                  
[64] "fBodyGyro-std()-X"                   
[65] "fBodyGyro-std()-Y"                   
[66] "fBodyGyro-std()-Z"                   
[67] "fBodyGyro-meanFreq()-X"              
[68] "fBodyGyro-meanFreq()-Y"              
[69] "fBodyGyro-meanFreq()-Z"              
[70] "fBodyAccMag-mean()"                  
[71] "fBodyAccMag-std()"                   
[72] "fBodyAccMag-meanFreq()"              
[73] "fBodyBodyAccJerkMag-mean()"          
[74] "fBodyBodyAccJerkMag-std()"           
[75] "fBodyBodyAccJerkMag-meanFreq()"      
[76] "fBodyBodyGyroMag-mean()"             
[77] "fBodyBodyGyroMag-std()"              
[78] "fBodyBodyGyroMag-meanFreq()"         
[79] "fBodyBodyGyroJerkMag-mean()"         
[80] "fBodyBodyGyroJerkMag-std()"          
[81] "fBodyBodyGyroJerkMag-meanFreq()"     
[82] "angle(tBodyAccMean,gravity)"         
[83] "angle(tBodyAccJerkMean),gravityMean)"
[84] "angle(tBodyGyroMean,gravityMean)"    
[85] "angle(tBodyGyroJerkMean,gravityMean)"
[86] "angle(X,gravityMean)"                
[87] "angle(Y,gravityMean)"                
[88] "angle(Z,gravityMean)"



Acknowledgements:
=================
The raw dataset used to generate this tidy dataset and portions of the codebook explaining the features can be credited to: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

=======================
Tara Grillos. April 2020.