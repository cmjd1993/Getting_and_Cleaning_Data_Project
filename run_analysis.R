## Load the plyr package as we will need this for the assignment 
library(plyr)

## Create a path to load the datasets from the zip file.

path <- "~/Desktop/Cathy Coursera/UCI HAR Dataset/"

## Load all the various data sources into R. Put them all into the same format
## using read.table function.

features <- read.table(paste0(path,"features.txt"),
                       quote="\"", comment.char="", stringsAsFactors=FALSE)

x_train <- read.table(paste0(path, "train/X_train.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

y_train <-  read.table(paste0(path, "train/Y_train.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

x_test <- read.table(paste0(path,"test/X_test.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

y_test <- read.table(paste0(path, "test/y_test.txt"), 
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

subject_train <- read.table(paste0(path,"train/subject_train.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

subject_test <- read.table(paste0(path,"test/subject_test.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)

activity_labels <- read.table(paste0(path,"activity_labels.txt"),
                     quote="\"", comment.char="", stringsAsFactors=FALSE)


## Using the rbind() command, group all the "x", "y" and "subject" data together
## to save messing around with 6 different data tables.

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)


## Using the features table, select all variables for the mean and standard 
## deviation using Metacharacters and the grep() command. We then apply names
## to x_data

features_wanted <- grep("-[Mm]ean|std", features[,2])
x_data <- x_data[,features_wanted]
names(x_data) <- features[features_wanted, 2]


## Change the activity values to names from the activity_labels data and rename 
## column "Activity" for y_data.

y_data[, 1] <- activity_labels[y_data[, 1], 2]
names(y_data) <- "Activity"


## Reanme the subject_data to "Subject" for clarity

names(subject_data) <- "Subject"

## Using cbind(), bind all the data together into one dataset called "tidy_data"

tidy_data <- cbind(subject_data, y_data, x_data)

## Tidy up column names using "for" loop to make names appear neater.

tidy_names  = colnames(tidy_data);

for (i in 1:length(tidy_names)) 
{
        tidy_names[i] = gsub("-mean","Mean",tidy_names[i])
        tidy_names[i] = gsub("-std","Std",tidy_names[i])
        tidy_names[i] = gsub("\\()","",tidy_names[i])
        
}

colnames(tidy_data) = tidy_names

## Create independent tidy data set with average of each variable for each 
## activiy and subject

mean_tidy_data <-aggregate(. ~Subject + Activity, tidy_data, mean)
mean_tidy_data <-mean_tidy_data[order(mean_tidy_data$Subject,
                                      mean_tidy_data$Activity),]

