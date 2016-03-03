## Run Analysis reads the data from local PC from path "./data"
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for 
## each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## Creates a second, independent tidy data set with the average of each 
## variable for each activity and each subject.

# Download files if they donot exist.
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}

if(!file.exists("./data/getdata_projectfiles_UCI HAR Dataset.zip")){
    download.file(fileURL, 
                  destfile = "./data/getdata_projectfiles_UCI HAR Dataset.zip")
    unzip("./data/getdata_projectfiles_UCI HAR Dataset.zip", exdir = "./data/")
}

# Read activities and features
library(data.table)
attrib <- fread("./data/UCI HAR Dataset/activity_labels.txt")
features <- fread("./data/UCI HAR Dataset/features.txt")

# Read train datasets
trainX <- fread("./data/UCI HAR Dataset/train/X_train.txt")
trainY <- fread("./data/UCI HAR Dataset/train/Y_train.txt")
subjecttrain <- fread("./data/UCI HAR Dataset/train/subject_train.txt")

# Read test datasets
testX <- fread("./data/UCI HAR Dataset/test/X_test.txt")
testY <- fread("./data/UCI HAR Dataset/test/Y_test.txt")
subjecttest <- fread("./data/UCI HAR Dataset/test/subject_test.txt")

# Use descriptive activity names
library(plyr)
trainactivity <- join(trainY, attrib)
testactivity  <- join(testY, attrib)
# remove temporary objects
rm(fileURL, trainY, testY, attrib)
library(dplyr)
trainactivity <- select(trainactivity, -V1)
testactivity  <- select(testactivity, -V1)

# Appropriately labels the data set with descriptive variable names.
names(trainX) <- features$V2
names(testX)  <- features$V2
names(trainactivity) <- "activity"
names(testactivity)  <- "activity"
names(subjecttrain)  <- "subject"
names(subjecttest)   <- "subject"
# remove temporary objects
rm(features)

# Extracts only the measurements on the mean and standard deviation
trainX <- select(trainX, contains("mean()"), contains("std()"))
testX  <- select(testX, contains("mean()"), contains("std()"))

# Create tidy dataset
trainDat <- cbind(subjecttrain, trainactivity, trainX)
testDat  <- cbind(subjecttest,  testactivity,  testX)
UCIdataset <- rbind(trainDat, testDat)
names(UCIdataset) <- gsub("\\()", "",names(UCIdataset))

# remove temporary objects
rm(subjecttrain, trainactivity, trainX, trainDat)
rm(subjecttest,  testactivity,  testX, testDat)

# Creates a summary dataset with the average of each variable for 
# each activity and each subject.
UCIsummary <- aggregate(UCIdataset, 
                        list(bySubject = UCIdataset$subject,
                             byActivity = UCIdataset$activity), mean)
UCIsummary <- select(UCIsummary, -subject, -activity)          

# Download datasets
write.csv(UCIdataset, file = "./data/UCIdataset.csv", 
          row.names = FALSE, col.names = TRUE)
write.csv(UCIsummary, file = "./data/UCIsummary.csv", 
          row.names = FALSE, col.names = TRUE)