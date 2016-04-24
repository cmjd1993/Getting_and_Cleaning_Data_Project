# Getting and Cleaning Data Project#
Submission for final project of the Coursera Getting and Cleaning Data course

##Objective##
The objective of this project was to submit a tidy dataset. The review criteria is the following:

1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and     summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it

##The Repos##
This Repos contains the following:
* *tidy_data* - This is my tidy dataset 
* *Codebook.md* - A markdown file with details on the Dataset, variables in the dataset and the procedures that I took to tidying the data in *run_analysis.R* to create *tidy_data.txt*
* *README.md* - This file
* *run_analysis.R*  - My r script instruction how I transformed the data from raw data into a tidy dataset called *tidy_data.txt*

##The Data##

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##My run_analysis.R Script##

My run_analysis.R script does the following: 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
