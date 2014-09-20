## R Script for Getting and Cleaning Data Course Project / Coursera Specialization
## Author: Gabriel Almeida
## Date: 20/09/2014

## Library dplyr
library(dplyr)

## Download and unzip the file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = fileUrl, destfile = "./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
unzip(zipfile = "./getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

## Read data
X_train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
X_test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
features <- read.table(file = "./UCI HAR Dataset/features.txt")
activity_labels <- read.table(file = "./UCI HAR Dataset/activity_labels.txt")

## Change the column names
colnames(X_train) <- features[,2]
colnames(X_test) <- features[,2]

colnames(subject_train) <- c("subject")
colnames(subject_test) <- c("subject")

colnames(y_test) <- c("activity_id")
colnames(y_train) <- c("activity_id")

colnames(activity_labels) <- c("activity_id" , "activity_name")

## Merge data
df_temp1 <- cbind.data.frame(X_train,subject_train,y_train)
df_temp2 <- cbind.data.frame(X_test,subject_test,y_test)
df <- rbind.data.frame(df_temp1,df_temp2)

## Descriptive activity names to name the activities

df <- merge(x = df,y = activity_labels,by = "activity_id",all.x = TRUE, all.y = TRUE)

## Select mean and std
## Remove meanFreq and angle
## Keep activity and subject

df <- select(df,contains("mean"),contains("std"),-contains("meanFreq"),-contains("angle"),subject,activity_name)

## Group by subject and activity
## Mean all other variables
df <- group_by(df,subject,activity_name)
df <- summarise_each(df, funs(mean))

## Write table for project
tidy_data <- write.table(df, row.name=FALSE, file = "./tidy_data.txt")
