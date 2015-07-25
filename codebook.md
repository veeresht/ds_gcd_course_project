---
title: "Codebook - Getting and Cleaning Data Course Project"
author: "Veeresh Taranalli"
date: "July 25, 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
Short description of the project

##Study design and data processing

###Collection of the raw data
Description of how the data was collected.

###Notes on the original (raw) data
Some additional notes (if avaialble, otherwise you can leave this section out).

##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the UCI_HAR_Tidy_Dataset_Coursera_Project.txt file
 - Dimensions of the dataset - 11880 rows x 5 cols
 - Summary of the data
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
    + tBodyAcc.X -- Time domain acceleration of the body in the X direction as measured by the accelerometer.  
    + tBodyAcc.Y -- Time domain acceleration of the body in the Y direction as measured by the accelerometer.   
    + tBodyAcc.Z -- Time domain acceleration of the body in the Z direction as measured by the accelerometer.  
    + tGravityAcc.X -- Time domain acceleration of the body in the X direction as measured by the accelerometer.
    + tGravityAcc.Y -- Time domain acceleration of the body in the X direction as measured by the accelerometer.
    + tGravityAcc.Z -- Time domain acceleration of the body in the X direction as measured by the accelerometer.  
    + tBodyAccJerk.X -- Time domain acceleration of the body in the X direction as measured by the accelerometer.  
    + tBodyAccJerk.Y -- Time domain acceleration of the body in the X direction as measured by the accelerometer.    
    + tBodyAccJerk.Z -- Time domain acceleration of the body in the X direction as measured by the accelerometer.    
    + tBodyGyro.X -- Time domain acceleration of the body in the X direction as measured by the accelerometer.     
    + tBodyGyro.Y -- Time domain acceleration of the body in the X direction as measured by the accelerometer.   
    + tBodyGyro.Z -- Time domain acceleration of the body in the X direction as measured by the accelerometer.   
    + tBodyGyroJerk.X -- Time domain acceleration of the body in the X direction as measured by the accelerometer.     
    + tBodyGyroJerk.Y -- Time domain acceleration of the body in the X direction as measured by the accelerometer.   
    + tBodyGyroJerk.Z -- Time domain acceleration of the body in the X direction as measured by the accelerometer.   
   + tBodyAccMag --  
   + tGravityAccMag --   
   + tBodyAccJerkMAg --  
   + tBodyGyroMag --  
   + tBodyGyroJerkMag --  
   + fBodyAcc.X --  
   + fBodyAcc.Y --  
   + fBodyAcc.Z --
   + fBodyAccJerk.X --  
   + fBodyAccJerk.Y --  
   + fBodyAccJerk.Z --  
   + fBodyGyro.X --  
   + fBodyGyro.Y --  
   + fBodyGyro.Z --  
   + fBodyAccMag --  
   + fBodyBodyAccJerkMag --      
   + fBodyBodyGyroMag --         
   + fBodyBodyGyroJerkMag --     
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
