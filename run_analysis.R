library(dplyr)
library(tidyr)

# Function to remove NA's along rows in a data frame and align columns
remove_nas_along_rows <- function(x_df, num_cols) {
    x_list_tidy <- sapply(apply(x_df, 1, function(x) {x[!is.na(x)]}), as.numeric)
    x_matrix_tidy <- matrix(unlist(x_list_tidy), ncol = num_cols, byrow = TRUE) 
    x_df_tidy <- data.frame(x_matrix_tidy)
    x_df_tidy
}

# Read data files from the provided UCI HAR Dataset
activity_labels_df <- read.csv("./UCI HAR Dataset/activity_labels.txt", 
                               header = FALSE, sep = " ")
feature_names_df <- read.csv("./UCI HAR Dataset/features.txt", 
                             header = FALSE, sep = " ")
subject_train_df <- read.csv("./UCI HAR Dataset/train/subject_train.txt", 
                                 header = FALSE)
x_train_df <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = " ", 
                           header = FALSE)
y_train_df <- read.csv("./UCI HAR Dataset/train/y_train.txt", 
                           header = FALSE)
subject_test_df <- read.csv("./UCI HAR Dataset/test/subject_test.txt", 
                            header = FALSE)
x_test_df <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep = " ", 
                      header = FALSE)
y_test_df <- read.csv("./UCI HAR Dataset/test/y_test.txt", 
                      header = FALSE)

# Process the train and test feature data frames to remove NAs and make it tidy
x_train_df_no_nas <- remove_nas_along_rows(x_train_df, num_cols = 561)
x_test_df_no_nas <- remove_nas_along_rows(x_test_df, num_cols = 561)

# Bind the the train and test data frames together to create a merged dataframe
# useful for further processing and tidying
x_df <- rbind(x_train_df_no_nas, x_test_df_no_nas)
y_df <- rbind(y_train_df, y_test_df)
subject_df <- rbind(subject_train_df, subject_test_df)
merged_df <- cbind(subject_df, y_df, x_df)

# Remove intermediate dataframes from global environment
remove(subject_train_df, subject_test_df, subject_df)
remove(x_train_df, x_train_df_no_nas, x_df, y_train_df, x_test_df, 
       x_test_df_no_nas, y_df, y_test_df)

# Assign feature names to column variables
names(merged_df)[1:2] <- c("SubjectID", "Activity")
names(merged_df)[3:ncol(merged_df)] <- as.character(feature_names_df[, 2])
unique_var_names <- make.names(names(merged_df), unique = TRUE, allow_ = TRUE)
names(merged_df) <- unique_var_names

# Assign descriptive activity labels for the Activity variable (column)
merged_df$Activity <- sapply(merged_df$Activity, 
                             function(x) {activity_labels_df[x, 2]})

# Select subset of only mean and standard deviation measurements for every
# feature measurement. 
merged_df_subset <- select(merged_df, SubjectID, Activity, 
                           grep("mean\\b|std\\b", names(merged_df)))

# Clean up the variable (column) labels 
names(merged_df_subset) <- sapply(names(merged_df_subset), 
                                  function(x) { gsub("\\.\\.", "", x) })

# Create a tbl_df for the tidy dataset
tidy_df <- tbl_df(merged_df_subset)

# Compute average of the existing variables 
# grouped by SubjectID and Activity variables
tidy_df <- group_by(tidy_df, SubjectID, Activity)
tidy_df <- mutate_each(tidy_df, funs(mean), -SubjectID, -Activity)
names(tidy_df) <- c("SubjectID", "Activity", 
                    sapply(names(tidy_df[, 3:ncol(tidy_df)]), 
                           function(x) {paste(x, "mean", sep = "_")}))

# Remove duplicate rows and order rows by SubjectID
tidy_df <- distinct(tidy_df)
tidy_df <- arrange(tidy_df, SubjectID)

# Write tidy dataset to a file
write.table(tidy_df, "UCI_HAR_Tidy_Dataset_Coursera_Project.txt", 
            row.names = FALSE)
