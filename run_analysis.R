## Downloads the zip file from the web
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
file <- "dataset.zip"
path <- "UCI HAR Dataset"

# first it checks to see whether there exists such file already
if(!file.exists(file)){
        print("downloading data")
        download.file(url,file, method="curl",mode="wb")
}

## Reads the data from the zip data file and creates the train and test data sets

print("Reading training data & creating training data set")

# reads first the features file to use as column names for the train and test data sets
features <- read.table(unz(file, paste(path,"features.txt",sep="/")),sep="",stringsAsFactors=F)

# gets the training data
set <- "train"
subject_train <- read.table(unz(file,paste(path,set,"subject_train.txt",sep="/")),sep="",stringsAsFactors=F,col.names="id")
X_train <- read.table(unz(file,paste(path,set,"X_train.txt",sep="/")),sep="",stringsAsFactors=F,col.names=features$V2)
y_train <- read.table(unz(file,paste(path,set,"y_train.txt",sep="/")),sep="",stringsAsFactors=F,col.names="activity")
ftrain <-cbind(subject_train,y_train,X_train)

print("Reading test data & creating test data set")

# gets the test data
set <- "test"
subject_test <- read.table(unz(file,paste(path,set,"subject_test.txt",sep="/")),sep="",stringsAsFactors=F,col.names="id")
X_test <- read.table(unz(file,paste(path,set,"X_test.txt",sep="/")),sep="",stringsAsFactors=F,col.names=features$V2)
y_test <- read.table(unz(file,paste(path,set,"y_test.txt",sep="/")),sep="",stringsAsFactors=F,col.names="activity")
ftest <-cbind(subject_test,y_test,X_test)

## 1. Merges the training and test sets to create one data set

dataall <- rbind(ftrain,ftest)

# Sorts the data according to the id
datasort <- dataall[order(dataall$id),]

## 3. Uses descriptive activity names to name the activities in the data set
actlabels <- read.table(unz(file,paste(path,"activity_labels.txt",sep="/")),sep="",stringsAsFactors=F)

## 4. Appropriately labels the data set with descriptive activity names
datasort$activity <- factor(datasort$activity, levels=actlabels$V1, labels=actlabels$V2)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement
data1 <- datasort[,c(1,2,grep("mean", colnames(datasort)), grep("std", colnames(datasort)))]

# saves the first data set result
print("Saving the first data set")
write.csv(data1,"data1.csv")

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

# loading the plyr package
library(plyr)

# creates the tidy data set using ddply
print("Creating the tidy data set")
data2 <- ddply(data1, .(id, activity), .fun=function(x){colMeans(x[,-c(1:2)]) })

# adds "_mean" to the column names
colnames(data2)[-c(1:2)] <- paste(colnames(data2)[-c(1:2)], "_mean", sep="")

# saves the second tidy data set 
print("Saving the second tidy data set")
write.csv(data2,"data2.csv")