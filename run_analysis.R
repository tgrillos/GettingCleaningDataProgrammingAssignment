## Coursera Class 3
## Programming Assignment

setwd("~/Dropbox/STATS TUTORIALS/Mate and Methods/Programming Assignments/Course4 Assignment 1/GettingCleaningDataProgrammingAssignment")

##############################################################
## Part 1: GETTING THE DATA

## Download and unzip the data files
fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(fileURL,destfile='data.zip')
unzip('data.zip')

## Read in relevant data files:
## Training Data:
## Read in training dataset:
train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
## Read in training labels:
train_names <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
## Read in Subject Labels
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
## Test Data: 
## Read in test dataset:
test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
## Read in test labels:
test_names <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
## Read in Subject Labels
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
## Read in variable names from features.txt file
varnames <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
## Read in activity labels from activity_labels.txt file
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

## Load the dplyr package
library(dplyr)

## STEP 1 from the assignment instructions
## Merge the training and the test sets to create one data set.
phones <- bind_rows(train,test); dim(phones)


## STEP 2 from the assignment instructions
## Extract only the measurements on the mean and standard deviation for each measurement.
## Identify which variables involve mean or standard deviation
varnames$mean <- grepl("[Mm]ean",varnames$V2)
varnames$std <- grepl("[Ss]td",varnames$V2)
head(varnames,20)
varstokeep <- varnames[varnames$mean==TRUE|varnames$std==TRUE,] ;varstokeep
## keep only the columns with mean and standard deviation measurements
phones <- phones[,c(varstokeep$V1)]
str(phones)

## STEP 4 from the assignment instructions
## Label the data set with the descriptive variable names.
## Add variable names to the dataset
names(phones) <-varstokeep$V2
str(phones)

## Merge the subject labels for the training and test data into one vector:
subjects <- bind_rows(subject_train,subject_test) 
# Confirm this looks how it should with correct dimensions
dim(subjects); class(subjects); head(subjects)
# rename column so can identify it more easily in full dataset
names(subjects) <- "subject"; head(subjects)
## Add the labels identifying the subjects to the main dataset
phones <- cbind(phones,subjects)
str(phones)


## Merge the activity labels for the training and test data into one vector:
labels <- bind_rows(train_names,test_names) 
# Confirm this looks how it should with correct dimensions
dim(labels); class(labels); head(labels)
# rename column so can identify it more easily in full dataset
names(labels) <- "labels"; head(subjects)
## add the vector with the labels to the newly created dataset:
phones <- cbind(phones,labels)
str(phones)


## STEP 3 from the assignment instructions (Step 4 already complete above)
## Apply descriptive activity names to name the activities in the data set
phones <- mutate(phones,activity= ifelse(phones$labels==1,"WALKING",
                              ifelse(phones$labels==2,"WALKING_UPSTAIRS",
                              ifelse(phones$labels==3,"WALKING_DOWNSTAIRS",
                              ifelse(phones$labels==4,"SITTING",
                              ifelse(phones$labels==5, "STANDING",
                              ifelse(phones$labels==6, "LAYING","NA")
                                     )))))    )
table(phones$labels); table(phones$activity)


## re-characterize new activity variable as a factor variable
phones$activity <- factor(phones$activity,levels=activity_names$V2)
str(phones)

## Drop label variable which is no longer necessary with addition of activity
phones <- phones[,-88]
str(phones)



## sort by subject & activity label
phones <- arrange(phones,labels)


#############################################################################
#############################################################################
#############################################################################
#############################################################################
#############################################################################

## STEP 5 from the assignment instructions
## Creates a second, tidy data set with the 
## average of each variable for each activity and each subject





# To rename variables using dplyr
rename(phones, label = , subject = )

# To create new variables using dplyr
mutate(phones, newvar = formula based on old variable)

# Make new dataset grouped by some var and then get summary stats
group_by(phones, subject)
summarize(newphones, pm25=mean(pm25), o3=max(o3mean2))
