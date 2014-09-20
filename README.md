GCD-Course-Project
==================

This repository is for submetting Getting and Cleaning Data Course Project from Data Science Specialization. 

### 1) Script

    1) Download and unzip the file
    2) Read data
    3) Change the column names
    4) Merge data in this order: 
        combine this data frames X_train,subject_train,y_train as column
        combine this data frames X_test,subject_test,y_test as column
        combine the 2 data frames above as rows
    5) Descriptive activity names to name the activities
    6) Select mean and std, Remove meanFreq and angle, Keep activity and subject
    7) Group by subject and activity
    8) Mean all other variables
    9) Write final tidy data

### 2) Code Book 

Raw data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Tidy data: https://github.com/ssirbill/GCD-Course-Project/blob/master/tidy_data.txt

As Davi Hood posted, transformation process: 
<img src="https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png">

Instructions:

    1- Merges the training and the test sets to create one data set.
    2- Extracts only the measurements on the mean and standard deviation for each measurement. 
    3- Uses descriptive activity names to name the activities in the data set
    4- Appropriately labels the data set with descriptive variable names. 
    5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject


