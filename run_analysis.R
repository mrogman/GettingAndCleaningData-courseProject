library(plyr)

zipFile <- "data.zip"

## Download and unzip the dataset if it does not exist
if (!file.exists(zipFile)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileUrl, zipFile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) unzip(filename)

## get desired feature row indicies (mean & std only)
allFeatures <- as.character(read.table("UCI HAR Dataset/features.txt")[,2])
featuresSub.i <- grep(".*mean.*|.*std.*", allFeatures)

## Load data sets
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresSub.i]
yTrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresSub.i]
yTest <- read.table("UCI HAR Dataset/test/Y_test.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

## merge data sets
train <- cbind(subjectTrain, yTrain, xTrain)
test <- cbind(subjectTest, yTest, xTest)
allData <- rbind(train, test)

## assign column names
featuresSub.names <- allFeatures[featuresSub.i]
featuresSub.names = gsub('-mean', 'Mean', featuresSub.names)
featuresSub.names = gsub('-std', 'Std', featuresSub.names)
featuresSub.names = gsub("[()]", "", featuresSub.names)
colnames(allData) <- c("subject", "activity", featuresSub.names)

## factor activities and subjects
activityLabels <- as.character(read.table("UCI HAR Dataset/activity_labels.txt")[,2])
allData$activity <- factor(allData$activity, levels = 1:length(activityLabels), labels = activityLabels)
allData$subject <- as.factor(allData$subject)

## get means
means = ddply(allData, .(activity, subject), numcolwise(mean))

## write to file
write.table(means, "final.txt", row.names = F, quote = F, append = F)
