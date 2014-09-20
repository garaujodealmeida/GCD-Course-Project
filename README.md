GCD-Course-Project
==================

This repository is for submetting Getting and Cleaning Data Course Project from Data Science Specialization. 

### 1) Script

    1) Download and unzip the file
    2) Read data
    3) Change the column names
    4) Merge data in this order: 
        combine data frames X_train,subject_train,y_train as column
        combine data frames X_test,subject_test,y_test as column
        combine 2 data frames above as rows
    5) Descriptive activity names to name the activities
    6) Select mean and std, Remove meanFreq and angle, Keep activity and subject
    7) Group by subject and activity
    8) Mean all other variables
    9) Write final tidy data

### 2) Code Book 

Raw data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Tidy data: https://github.com/ssirbill/GCD-Course-Project/blob/master/tidy_data.txt

Instructions:

    1- Merges the training and the test sets to create one data set.
    2- Extracts only the measurements on the mean and standard deviation for each measurement. 
    3- Uses descriptive activity names to name the activities in the data set
    4- Appropriately labels the data set with descriptive variable names. 
    5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
    
As Davi Hood posted, transformation process: 
<img src="https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png">


Tidy data is group by subject and activity. All other variables is a mean of raw data. 

Tidy data variables: 
"subject"
"activity_name"
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyAccMag-mean()"
"tGravityAccMag-mean()"
"tBodyAccJerkMag-mean()"
"tBodyGyroMag-mean()"
"tBodyGyroJerkMag-mean()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyAccMag-mean()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroJerkMag-mean()"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-std()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroJerkMag-std()"


