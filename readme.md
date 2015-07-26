---
title: "README -- Getting and Cleaning Data Course Project"
author: "Veeresh Taranalli"
date: "July 25, 2015"
output:
  html_document:
    keep_md: yes
---

##Steps to create the tidy data file
 - Download the [UCI HAR dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in your working directory. 
 - Download the R script "run_analysis.R" from GitHub in your working directory.
 - Run the R script "run_analysis.R" to obtain the tidy data file named "UCI_HAR_Tidy_Dataset_Coursera_Project.txt" in your working directory.
 - Your working directory structure should look like as shown below
    * UCI HAR Dataset (Directory/Folder)
    * run_analysis.R (R script file)
    * readme.md (markdown file)
    * codebook.md (markdown file)
    * UCI_HAR_Tidy_Dataset_Coursera_Project.txt (text file containing the tidy dataset)
    
##Steps performed by the "run_analysis.R" script for cleaning the data
 - Read data files from the provided UCI HAR Dataset.
 - Process the train and test feature data frames to remove NAs and make it tidy.
 - Bind the the train and test data frames together to create a merged dataframe useful for further processing
 and tidying.
 - Remove intermediate dataframes from global environment.
 - Assign feature names to column variables.
 - Assign descriptive activity labels for the Activity variable (column).
 - Select subset of only mean and standard deviation measurements for every feature measurement. 
 - Clean up the variable (column) labels. 
 - Create a tbl_df for the tidy dataset.
 - Compute average of the existing variables grouped by SubjectID and Activity variables.
 - Remove duplicate rows and order rows by SubjectID.
 - Convert to long form of data by gathering all columns as a 'Feature' variable.
 - Clean up the feature names.
 - Separate the Feature and Measurement Type into two variables.
 - Write tidy dataset to a file.
 