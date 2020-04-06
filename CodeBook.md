# GettingCleaningDataProgrammingAssignment - Tidy Smartphone Activity Data
# Final Programming Assignment for Coursera Class "Getting and Cleaning Data"

# CODEBOOK

Data Description:

I created a new tidy dataset from the "Human Activity Recognition Using Smartphones Dataset". The raw data includes measurements of 30 individuals engaging in 6 sets of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), while wearing a smartphone. The researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The original data was split into a training group and a test group. The raw data available are available at the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Data Cleaning Process:

Here I describe the steps in the data cleaning process, all of which are performed using the 'run_analysis.R' script. Beginning with the raw data, I first read in all relevant files which included 'X_test.txt' (the test data), 'y_test.txt' (the test labels), 'subject_test.txt' (each row identifies the subject who performed the activity in the test data) 'X_train.txt' (the training data), 'y_train.txt' (the training labels), 'subject_train.txt' (identifies the subject who performed each actviity in the training data), 'activity_labels.txt' (links the class labels with their activity name), and 'features.txt' (list of the features measured by each variable).

Next, I merged the training data with the test data ('X_train.txt' and 'X_test.txt') to create a single database including measurements for all 30 subjects performing all 6 actiities. Using the 'features.txt' file, I identified the variables that involved a mean or standard deviation and kept only those columns in the database pertaining to those variables. I then added the names of those variables to the database. Next I combined the subject information from 'subject_train.txt' and 'subject_test.txt' into a single vector in the same order in which I had combined the training and test data above, and then added it as a new column to the database, with an appropriate name. Next I did the same thing with the activity labels, 'train_names.txt' and 'test_names.txt', also adding these as a column to the database, with an appropriate name. I then used the 'activity_labels.txt' file to create more descriptive labels for each activity.

Finally, for each measurement variable remaining in the data, I calculated the mean of that variable grouped by subject and activity type, producing a dataset with 88 variables and 180 observations (30 subjects * 6 activities). 


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