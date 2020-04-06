# GettingCleaningDataProgrammingAssignment - Tidy Smartphone Activity Data
# Final Programming Assignment for Coursera Class "Getting and Cleaning Data"
# Read Me File


This tidy dataset is generated from the "Human Activity Recognition Using Smartphones Dataset". The data includes measurements of 30 subjects performing 6 activities. The raw data can be found at the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


This tidy data repository includes the following files:

-'README.md' - You are reading me now. 

-'tidyphones.txt' - This is the tidy dataset that was constructed from the raw smartphones activity data using the run_analysis.R script. Each row represents the measurements for a particular activity performed by a particular subject. This file can be read into R with the following code:
data <- read.table("tidyphones.txt", header = TRUE) 

-'run_analysis.R'  - This is the R script that generates 'tidyphones.txt' starting from the raw smartphones activity data available on the web. It is heavily annotated to explain each step in the data cleaning process.

-'CodeBook.md' - This is a codebook that describes the variables, the data, and the work that was performed to clean up the data.


Acknowledgements:
=================
The raw dataset used to generate this tidy dataset can be credited to: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

=======================
Tara Grillos. April 2020.