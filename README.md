# GettingCleaningDataProgrammingAssignment - Tidy Smartphone Activity Data
# Final Programming Assignment for Coursera Class "Getting and Cleaning Data"
# Read Me File

I created a new tidy dataset from the "Human Activity Recognition Using Smartphones Dataset". The raw data includes measurements of 30 individuals engaging in 6 sets of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), while wearing a smartphone. The original data was split into a training group and a test group. The raw data are available at the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This tidy data repository includes the following files:

-'README.md' - You are reading me now. 

-'tidyphones.txt' - This is the tidy dataset that was constructed from the raw smartphones activity data using the run_analysis.R script. Each row represents the measurements for a particular activity performed by a particular subject. This file can be read into R with the following code:
data <- read.table("tidyphones.txt", header = TRUE) 

-'run_analysis.R'  - This is the R script that generates 'tidyphones.txt' starting from the raw smartphones activity data available on the web. It is heavily annotated to explain each step in the data cleaning process.

-'CodeBook.md' - This is a codebook that describes the variables, the data, and the work that was performed to clean up the data.


Data Cleaning Process:
=================
Here I describe the steps in the data cleaning process, all of which are performed using the 'run_analysis.R' script. Beginning with the raw data, I first read in all relevant files which included 'X_test.txt' (the test data), 'y_test.txt' (the test labels), 'subject_test.txt' (each row identifies the subject who performed the activity in the test data) 'X_train.txt' (the training data), 'y_train.txt' (the training labels), 'subject_train.txt' (identifies the subject who performed each actviity in the training data), 'activity_labels.txt' (links the class labels with their activity name), and 'features.txt' (list of the features measured by each variable).

Next, I merged the training data with the test data ('X_train.txt' and 'X_test.txt') to create a single database including measurements for all 30 subjects performing all 6 actiities. Using the 'features.txt' file, I identified the variables that involved a mean or standard deviation and kept only those columns in the database pertaining to those variables. I then added the names of those variables to the database. Next I combined the subject information from 'subject_train.txt' and 'subject_test.txt' into a single vector in the same order in which I had combined the training and test data above, and then added it as a new column to the database, with an appropriate name. Next I did the same thing with the activity labels, 'train_names.txt' and 'test_names.txt', also adding these as a column to the database, with an appropriate name. I then used the 'activity_labels.txt' file to create more descriptive labels for each activity.

Finally, for each measurement variable remaining in the data, I calculated the mean of that variable grouped by subject and activity type, producing a dataset with 88 variables and 180 observations (30 subjects * 6 activities). The last step in the 'run_analysis.R' code is to save the new, tidy dataset using write.table to the file 'tidyphones.txt'. You can read in that data file into R with the following code (assuming the tidy data has been saved to your working directory, as done at the end of the run_analysis.R file: 
data <- read.table("tidyphones.txt", header = TRUE) 


Acknowledgements:
=================
The raw dataset used to generate this tidy dataset can be credited to: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

=======================
Tara Grillos. April 2020.