---
title: "Codebook -- Getting and Cleaning Data Course Project"
author: "Veeresh Taranalli"
date: "July 25, 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
In this project, we create a tidy dataset by processing the raw data available in the UCI HAR dataset which is a collection of signals from smartphone sensors during physical activities of 30 different subjects for use in the study of human activity recognition (HAR).

##Study design and data processing

###Collection of the raw data
Details about the data collection can be obtained from the [UCI HAR webpage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

##Creating the tidy datafile

###Guide to create the tidy data file
 - Download the [UCI HAR dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in your working directory. 
 - Download the R script "run_analysis.R" from GitHub in your working directory.
 - Run the R script "run_analysis.R" to obtain the tidy data file named "UCI_HAR_Tidy_Dataset_Coursera_Project.txt" in your working directory.

###Cleaning of the data
The cleaning script reads in the dataset files and extracts the average of the mean and the average of the standard deviation measurements for the corresponding feature signals grouped by the subject and the activity.
More details about the script can be found in the [README](https://github.com/veeresht/ds_gcd_course_project/blob/master/readme.md).

##Description of the variables in the UCI_HAR_Tidy_Dataset_Coursera_Project.txt file
 - Dimensions of the dataset - 11880 rows x 5 cols
 - Variables present in the dataset   
 [1] SubjectID                            
 [2] Activity    
 [3] Feature   
 [4] MeasurementType  
 [5] Average  

###SubjectID 
Represents the unique ID of the subject (person) performing the physical activity
for the tests.

 - Class of the variable -- integer
 - Unique values/levels of the variable -- 1:30
 - Unit of measurement -- None

###Activity
Represents the physical activity performed by the subject (SubjectID) for the tests.

 - Class of the variable -- factor
 - Unique values/levels of the variable -- LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
 - Unit of measurement -- None

###Feature
Represents the class of measurement (Feature) corresponding to the subject (SubjectID) and the physical activity (Activity) for the tests.

 - Class of the variable -- factor
 - Unique values/levels of the variable 
    + tBodyAcc.X -- Time domain body accelerometer raw signal in the X direction.  
    + tBodyAcc.Y -- Time domain body accelerometer raw signal in the Y direction.   
    + tBodyAcc.Z -- Time domain body accelerometer raw signal in the Z direction.  
    + tGravityAcc.X -- Time domain gravity accelerometer raw signal in the X direction. 
    + tGravityAcc.Y -- Time domain gravity accelerometer raw signal in the Y direction.
    + tGravityAcc.Z -- Time domain gravity accelerometer raw signal in the Z direction. 
    + tBodyAccJerk.X -- Time domain body linear acceleration in the X direction.
    + tBodyAccJerk.Y -- Time domain body linear acceleration in the Y direction.
    + tBodyAccJerk.Z -- Time domain body linear acceleration in the Z direction.
    + tBodyGyro.X -- Time domain body gyroscope raw signal in the X direction.       
    + tBodyGyro.Y -- Time domain body gyroscope raw signal in the Y direction.     
    + tBodyGyro.Z -- Time domain body gyroscope raw signal in the Z direction.     
    + tBodyGyroJerk.X -- Time domain body angular velocity in the X direction.
    + tBodyGyroJerk.Y -- Time domain body angular velocity in the Y direction.
    + tBodyGyroJerk.Z -- Time domain body angular velocity in the Z direction.
    + tBodyAccMag -- Magnitude of time domain body accelerometer raw signal. 
    + tGravityAccMag -- Magnitude of time domain gravity accelerometer raw signal. 
    + tBodyAccJerkMAg -- Magnitude of time domain body linear acceleration.  
    + tBodyGyroMag -- Magnitude of time domain body gyroscope raw signal. 
    + tBodyGyroJerkMag -- Magnitude of time domain body angular velocity.  
    + fBodyAcc.X -- Frequency domain body accelerometer raw signal in the X direction.  
    + fBodyAcc.Y -- Frequency domain body accelerometer raw signal in the Y direction.  
    + fBodyAcc.Z -- Frequency domain body accelerometer raw signal in the Z direction.  
    + fBodyAccJerk.X -- Frequency domain body linear acceleration in the X direction. 
    + fBodyAccJerk.Y -- Frequency domain body linear acceleration in the Y direction.  
    + fBodyAccJerk.Z -- Frequency domain body linear acceleration in the Z direction.  
    + fBodyGyro.X -- Frequency domain body gyroscope raw signal in the X direction.    
    + fBodyGyro.Y -- Frequency domain body gyroscope raw signal in the Y direction.     
    + fBodyGyro.Z -- Frequency domain body gyroscope raw signal in the Z direction.     
    + fBodyAccMag -- Magnitude of frequency domain body accelerometer raw signal.  
    + fBodyBodyAccJerkMag -- Magnitude of frequency domain body linear acceleration.        
    + fBodyBodyGyroMag -- Magnitude of frequency domain body gyroscope raw signal.         
    + fBodyBodyGyroJerkMag -- Magnitude of frequency domain body angular velocity.    
 - Unit of measurement -- None

###MeasurementType
Represents the type of measurement (mean or standard deviation) recorded corresponding to the subject (SubjectID), the physical activity (Activity) and the Feature combinations for the tests.

 - Class of the variable -- factor
 - Unique values/levels of the variable -- mean, std
 - Unit of measurement -- None

###Average
Average of the mean or average of the standard deviation of the measurement recorded corresponding to the subject and the physical activity. 

 - Class of the variable -- numeric
 - Unique values/levels of the variable -- Values in [-1, 1]
 - Unit of measurement -- None
