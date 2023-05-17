#Load libraries
library(dplyr)
library(tidyr)
library(readr)
library(stringr)



#111111111111111111111111111111111111111111111111111111111111111111111111111111#

#Import train data
trainX <- read.table("UCI_HAR_Dataset//train//X_train.txt")
trainY <- read.table("UCI_HAR_Dataset//train//Y_train.txt")
trainSubject <- read.table("UCI_HAR_Dataset//train//subject_train.txt")

#Import test data
testX <- read.table("UCI_HAR_Dataset//test//X_test.txt")
testY <- read.table("UCI_HAR_Dataset//test//Y_test.txt")
testSubject <- read.table("UCI_HAR_Dataset//test//subject_test.txt")

#Import features
features <- read.table("UCI_HAR_Dataset//features.txt")
features <- features[,2]

#Merge sets
mergedX <- rbind(trainX,testX)
mergedY <- rbind(trainY, testY)
mergedSubject <- rbind(trainSubject, testSubject)

#Assign correct column names
colnames(mergedX) <- features
colnames(mergedY) <- "activity"
colnames(mergedSubject) <- "subject"

#Create final merged table
mergedSet <- cbind(mergedY, mergedSubject, mergedX)





#222222222222222222222222222222222222222222222222222222222222222222222222222222#

#Assign the activity, subject and each column which label contains mean or std
mean_std_set <- mergedSet %>% select(activity, subject, contains(c("mean", "std")))





#333333333333333333333333333333333333333333333333333333333333333333333333333333#

#Import activity labels
activity_labels <- read.table("UCI_HAR_Dataset//activity_labels.txt")
colnames(activity_labels) <- c("code", "label")

#assign descriptive activity names to data set
activity_named_set <- merge(x = activity_labels, y = mean_std_set, by.x = "code", by.y = "activity") %>%
        select(-code) %>%
        rename("activity" = "label")





#444444444444444444444444444444444444444444444444444444444444444444444444444444#

#Remove all non alphanumerc characters to make the variables easier to handle
fancy_name <- activity_named_set %>% 
        as_tibble() %>%
        rename_with( ~ gsub("[^[:alnum:]]", "", colnames(activity_named_set)))

#555555555555555555555555555555555555555555555555555555555555555555555555555555#

TidySet <- fancy_name %>% 
        group_by(activity, subject) %>%
        summarise(across(everything(), mean)) %>%
        as.data.frame()







