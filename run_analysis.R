# Purpose:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable
#    for each activity and each subject. 

library(reshape2)

#This is based on code from http://stackoverflow.com/questions/6364783/capitalize-the-first-letter-of-both-words-in-a-two-word-string
to_title_case <- function(x) {
  s <- strsplit(tolower(x), " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse=" ")
}

to_camel_case_from_underscores <- function(x) {
  s <- strsplit(x, "_")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse="")
}

download_and_unzip_data <- function() {
  if ( ! file.exists("data") ) {
    dir.create("data")
  }
  
  setwd("data")
  
  if ( ! file.exists("UCI HAR Dataset") ) {
    if ( ! file.exists("UCI-HAR-Dataset.zip") ) {
      download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UCI-HAR-Dataset.zip", "curl")
    }
    
    unzip("UCI-HAR-Dataset.zip")
  }
  
  setwd("..")
}

load_activities <- function () {
  activities <- read.table("activity_labels.txt", col.names=c("ActivityId", "ActivityName"))
  activities$ActivityName <- gsub("_"," ", activities$ActivityName)
  activities$ActivityName <- sapply(activities$ActivityName, to_title_case)  
  activities  
}

load_features <- function() {
  features <- read.table("features.txt", col.names=c("FeatureId", "FeatureName"))
  features$FeatureColName <- sub("^t","Time",features$FeatureName)
  features$FeatureColName <- sub("^f","Frequency",features$FeatureColName)
  features$FeatureColName <- sub("^angle\\(tBody","AngleTimeBody",features$FeatureColName)
  features$FeatureColName <- gsub("\\(\\)","",features$FeatureColName)
  
  #translate the feature names into a form that allows camel-casing
  features$FeatureColName <- gsub("\\(|\\)|-|,","_",features$FeatureColName)
  features$FeatureColName <- gsub("__","_",features$FeatureColName)
  features$FeatureColName <- gsub("_$","",features$FeatureColName)
  
  features$FeatureColName <- gsub("_$","",features$FeatureColName)
  features$FeatureColName <- sapply(features$FeatureColName, to_camel_case_from_underscores)  
    
  # There's a typo in the original data; correct it.
  features$FeatureColName <- gsub("BodyBody","Body",features$FeatureColName)
  features  
}

create_combined_data_set <- function( features ) {
  train_readings <- read.table("train/X_train.txt", col.names=features$FeatureColName )
  train_activities <- read.table("train/y_train.txt", col.names=c("ActivityId") )
  train_subjects <- read.table("train/subject_train.txt", col.names=c("SubjectId") )
  
  test_readings <- read.table("test/X_test.txt", col.names=features$FeatureColName )
  test_activities <- read.table("test/y_test.txt", col.names=c("ActivityId") )
  test_subjects <- read.table("test/subject_test.txt", col.names=c("SubjectId") )
  
  all_readings <- rbind( test_readings, train_readings )
  all_activities <- rbind( test_activities, train_activities )
  all_subjects <- rbind( test_subjects, train_subjects )
  
  combined <- cbind( all_activities, all_subjects, all_readings )  
}

determine_columns_for_mean_and_std_data_set <- function(features) {
  c( "ActivityId", "SubjectId", features[(grepl( "meanFreq\\(\\)|mean\\(\\)|std\\(\\)", features$FeatureName, ignore.case = TRUE )),]$FeatureColName )
}

calculate_averages_by_activity_and_subject <- function( combined ) {
  melted <- melt(combined, id.vars=c("ActivityId", "SubjectId"))
  melted$variable <- paste0( "Mean", melted$variable )
  dcast(melted, ActivityId + SubjectId ~ variable, mean)  
}

replace_activity_ids_with_activity_labels <- function( source_data, activities ) {
  source_with_activities <- merge( activities, source_data )
  col_names <- names(source_with_activities)
  col_names <- col_names[which(col_names != "ActivityId")]
  source_with_activities[,col_names]
}


download_and_unzip_data()
setwd("data/UCI HAR Dataset")

activities <- load_activities()
features <- load_features()

if ( ! exists("combined") ) {
  combined <- create_combined_data_set( features )
}

setwd("../..")

if ( ! exists("mean_and_std_measurements") ) {
  mean_and_std_measurements <- combined[,determine_columns_for_mean_and_std_data_set( features )]
  mean_and_std_measurements <- replace_activity_ids_with_activity_labels( mean_and_std_measurements, activities )
}

if ( ! exists("average_by_activity_and_subject") ) {
  average_by_activity_and_subject <- calculate_averages_by_activity_and_subject( combined )
  average_by_activity_and_subject <- replace_activity_ids_with_activity_labels( average_by_activity_and_subject, activities )
}



#g write.table, set the option of not writing the line numbers as that can look a bit ugly when reading it back in. As you were very warne
