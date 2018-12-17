####################################################
#Getting and Cleaning Data
#Steven Atienza- 2018
#
#
#This Script will Merge the Test and Training Data Sets to create One Data Sets
#I've included the downloading process in case you want to directly download it to the repo
#This Will extract only the measurements and standard deviation for each measurement.
#This will assign descriptive activities into the Data Set
#Appropriately labels the data set with descriptive variable names.
#
####################################################


#Load the Library dplyr
library(dplyr)

#Preliminary Step
#Get Data, Directly Download the Data in an online repo

compURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
compFileName <- "UCI HAR Dataset.zip"

#COndition if file is present

if (!file.exists(compFileName)) {
  download.file(compURL, compFileName, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(compFileName)
}


##Step 1 Reading Data
#This step will read all the Training and Test Data sets including the features and activity labels

# read training data
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))

# read test data
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

# read features, don't convert text labels to factors
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

# read activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")




##Step 2 Merging The Training and Test Data Set to create one Data Set (Solution for 1)
#This Step will merge all the training data set and test data set

# concatenate (Combine) individual data tables to make single data table
humanActivity <- rbind(
  cbind(trainingSubjects, trainingValues, trainingActivity),
  cbind(testSubjects, testValues, testActivity)
)

# remove individual data tables to save memory
rm(trainingSubjects, trainingValues, trainingActivity, 
   testSubjects, testValues, testActivity)

# assign column names
colnames(humanActivity) <- c("subject", features[, 2], "activity")


##Step 3 This Step will extract only the measurments on the mean and standard dev for each measurement (Solution for 2)

# determine columns of data set to keep based on column name...
columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))

# ... and keep data in these columns only
humanActivity <- humanActivity[, columnsToKeep]


##step 4 Use Descriptive Activity names to name activity on the data
#This process will make the data much more organized and human readable

# replace activity values with named factor levels
humanActivity$activity <- factor(humanActivity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])

###Step 5 Appropriately label the data set with descriptive variable names
#This process will label each data sets with a proper descriptive variable name
##This process will convert vague acronym into full descriptive variables

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# expand abbreviations and clean up names
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)

# correct typo
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use new labels as column names
colnames(humanActivity) <- humanActivityCols

##Step 6: Create a second, independent tidy set with the average of each
#          variable for each activity and each subject

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# output to file "tidy_data.txt" as required
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)



