#Dataset and Content Summary#

##The Dataset##
This data was taken from Human Activity Recognition Using Smartphones Data Set. Below is a link to the downloadable zip file: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to 
have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was 
obtained by calculating variables from the time and frequency domain.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##My Submission##

the original zip file contains the following:

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features in the experiment.

* 'activity_labels.txt': Links the class labels with their activity name.

* train/X_train.txt': Training Dataset.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test Dataset.

* 'test/y_test.txt': Test labels.

I used these files and performed the following analysis as seen in _run_analysis.R_

1. I merged the training and the test datasets to create one data set called _tidy_data_.
2. I extracted only the measurements on the mean and standard deviation for each measurement using the _grep()_ command.
3. I used descriptive activity names to name the activities in the data set renaming the variable _Activity_.
4. I appropriately labels the data set with descriptive variable names using a _for_ loop.
5. I created a second, independent tidy data set with the average of each variable for each activity and each subject called *mean_tidy_data*. I saved this clean dataset in  _tidy_data.txt_.
