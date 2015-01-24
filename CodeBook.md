## Codebook: Human Activity Recognition Using Smartphones

#### Sourse Data Set

This project uses data from [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The data represents measurements  captured from smartphones Samsung Galaxy S II on the waist of 30 subjects who were performing six activities of daily living. Information about sourse data set file is in *README.txt* file in **UCI HAR Dataset** directory. 
The project used the following files from the data set:

+ *features.txt* - list of all features
+ *activity_labels.txt* - links the class labels with their activity name
+ from train directory:
  - *X_train.txt* - training set
  - *y_train.txt* - training labels
  - *subject_train.txt* - each row identifies the subject who performed the activity for each window sample in the train data set
+ from test directory:
  - *X_test.txt* - test set
  - *y_test.txt* - test labels
  - *subject_test.txt* - each row identifies the subject who performed the activity for each window sample in the test data set


#### Data transformation and cleaning process

1. Merging the test and the train data sets from *X_train.txt* and *X_test.txt* by combining rows into one data set.
2. Applying labels from the file *features.txt*.
3. Extracting only the measurements on the mean and standard deviation for each measurement.
4. Adding two columns with names "activity" and "subject" using data from files *y_train.txt*, *y_test.txt*, *subject_train.txt*, *subject_test.txt*.
5. Naming the activities in the data set using descriptive activity names from the file *activity_labels.txt*.
6. Replacing the variable names with descriptive and more readable names by extending abbreviations, capitalizing words "mean" and "std", and removing dubble words and punctuation characters.
7. Creating the tidy data set *tidy_data* with the average of each variable for each activity and each subject.
8. Writing the tidy data set to *tidy_data.txt* file. 


#### Data Dictionary

Description of variables in the resulting tidy data set:

+ **activity** - activity label (character factor)
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
+ **subject** - test subject identifier (numeric)
  - 1 - 30
+ **timeBodyAccelerationMeanX** - Mean of Body Acceleration along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationMeanY** - Mean of Body Acceleration along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationMeanZ** - Mean of Body Acceleration along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationStdX** - Standard Deviation of Body Acceleration along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationStdY** - Standard Deviation of Body Acceleration along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationStdZ** - Standard Deviation of Body Acceleration along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationMeanX** - Mean of Gravity Acceleration along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationMeanY** - Mean of Gravity Acceleration along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationMeanZ** - Mean of Gravity Acceleration along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationStdX** - Standard Deviation of Gravity Acceleration along X axis measured in time domain
(numeric) 
  - within [-1,1]
+ **timeGravityAccelerationStdY** - Standard Deviation of Gravity Acceleration along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationStdZ** - Standard Deviation of Gravity Acceleration along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkMeanX** - Mean of Body Acceleration Jerk along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkMeanY** - Mean of Body Acceleration Jerk along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkMeanZ** - Mean of Body Acceleration Jerk along Z axis measured in time domain (numeric) 
  - within [-1,1]
+ **timeBodyAccelerationJerkStdX** - Standard Deviation of Body Acceleration Jerk along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkStdY** - Standard Deviation of Body Acceleration Jerk along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkStdZ** - Standard Deviation of Body Acceleration Jerk along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeMeanX** - Mean of Body Gyroscopic motion along X axis measured in time domain (numeric) 
  - within [-1,1]
+ **timeBodyGyroscopeMeanY** - Mean of Body Gyroscopic motion along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeMeanZ** - Mean of Body Gyroscopic motion along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeStdX** - Standard Deviation of Body Gyroscopic motion along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeStdY** - Standard Deviation of Body Gyroscopic motion along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeStdZ** - Standard Deviation of Body Gyroscopic motion along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkMeanX** - Mean of Body Gyroscopic Jerk along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkMeanY** - Mean of Body Gyroscopic Jerk along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkMeanZ** - Mean of Body Gyroscopic Jerk along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkStdX** - Standard Deviation of Body Gyroscopic Jerk along X axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkStdY** - Standard Deviation of Body Gyroscopic Jerk along Y axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkStdZ** - Standard Deviation of Body Gyroscopic Jerk along Z axis measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationMagnitudeMean** - Mean of Body Acceleration Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationMagnitudeStd** - Standard Deviation of Body Acceleration Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationMagnitudeMean** - Mean of Gravity Acceleration Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeGravityAccelerationMagnitudeStd** - Standard Deviation of Gravity Acceleration Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkMagnitudeMean** - Mean of Body Acceleration Jerk Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyAccelerationJerkMagnitudeStd** - Standard Deviation of Body Acceleration Jerk Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeMagnitudeMean** - Mean of Body Gyroscopic motion Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeMagnitudeStd** - Standard Deviation of Body Gyroscopic motion Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkMagnitudeMean** - Mean of Body Gyroscopic Jerk Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **timeBodyGyroscopeJerkMagnitudeStd** - Standard Deviation of Body Gyroscopic Jerk Magnitude measured in time domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationMeanX** - Mean of Body Acceleration along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationMeanY** - Mean of Body Acceleration along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationMeanZ** - Mean of Body Acceleration along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationStdX** - Standard Deviation of Body Acceleration along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationStdY** - Standard Deviation of Body Acceleration along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationStdZ** - Standard Deviation of Body Acceleration along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkMeanX** - Mean of Body Acceleration Jerk along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkMeanY** - Mean of Body Acceleration Jerk along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkMeanZ** - Mean of Body Acceleration Jerk along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkStdX** - Standard Deviation of Body Acceleration Jerk along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkStdY** - Standard Deviation of Body Acceleration Jerk along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkStdZ** - Standard Deviation of Body Acceleration Jerk along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeMeanX** - Mean of Body Gyroscopic motion along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeMeanY** - Mean of Body Gyroscopic motion along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeMeanZ** - Mean of Body Gyroscopic motion along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeStdX** - Standard Deviation of Body Gyroscopic motion along X axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeStdY** - Standard Deviation of Body Gyroscopic motion along Y axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeStdZ** - Standard Deviation of Body Gyroscopic motion along Z axis measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationMagnitudeMean** - Mean of Body Acceleration Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationMagnitudeStd** - Standard Deviation of Body Acceleration Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkMagnitudeMean** - Mean of Body Acceleration Jerk Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyAccelerationJerkMagnitudeStd** - Standard Deviation of Body Acceleration Jerk Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeMagnitudeMean** - Mean of Body Gyroscopic motion Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeMagnitudeStd** - Standard Deviation of Body Gyroscopic motion Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeJerkMagnitudeMean** - Mean of Body Gyroscopic Jerk Magnitude measured in frequency domain (numeric)
  - within [-1,1]
+ **frequencyBodyGyroscopeJerkMagnitudeStd** - Standard Deviation of Body Gyroscopic Jerk Magnitude measured in frequency domain (numeric) 
  - within [-1,1]
