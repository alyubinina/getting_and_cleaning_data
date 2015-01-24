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
+ **timeBodyAccelerationStdY** - Standard Deviation of Body Acceleration along Y axis measured in time domain (numeric)
+ **timeBodyAccelerationStdZ** - Standard Deviation of Body Acceleration along Z axis measured in time domain (numeric)
+ **timeGravityAccelerationMeanX** - Mean of Gravity Acceleration along X axis measured in time domain (numeric) 
+ **timeGravityAccelerationMeanY** - Mean of Gravity Acceleration along Y axis measured in time domain (numeric)
+ **timeGravityAccelerationMeanZ** - Mean of Gravity Acceleration along Z axis measured in time domain (numeric)
+ **timeGravityAccelerationStdX** - Standard Deviation of Gravity Acceleration along X axis measured in time domain (numeric) 
+ **timeGravityAccelerationStdY** - Standard Deviation of Gravity Acceleration along Y axis measured in time domain (numeric) 
+ **timeGravityAccelerationStdZ** - Standard Deviation of Gravity Acceleration along Z axis measured in time domain (numeric)
+ **timeBodyAccelerationJerkMeanX** - Mean of Body Acceleration Jerk along X axis measured in time domain (numeric) 
+ **timeBodyAccelerationJerkMeanY** - Mean of Body Acceleration Jerk along Y axis measured in time domain (numeric)
+ **timeBodyAccelerationJerkMeanZ** - Mean of Body Acceleration Jerk along Z axis measured in time domain (numeric) 
+ **timeBodyAccelerationJerkStdX** - Standard Deviation of Body Acceleration Jerk along X axis measured in time domain (numeric)
+ **timeBodyAccelerationJerkStdY** - Standard Deviation of Body Acceleration Jerk along Y axis measured in time domain (numeric)
+ **timeBodyAccelerationJerkStdZ** - Standard Deviation of Body Acceleration Jerk along Z axis measured in time domain (numeric) 
+ timeBodyGyroscopeMeanX - Mean of Body Gyroscopic motion along X axis measured in time domain (numeric) 
+ timeBodyGyroscopeMeanY - Mean of Body Gyroscopic motion along Y axis measured in time domain (numeric)
+ timeBodyGyroscopeMeanZ - Mean of Body Gyroscopic motion along Z axis measured in time domain (numeric)
+ timeBodyGyroscopeStdX - Standard Deviation of Body Gyroscopic motion along X axis measured in time domain (numeric)
+ timeBodyGyroscopeStdY - Standard Deviation of Body Gyroscopic motion along Y axis measured in time domain (numeric)
+ timeBodyGyroscopeStdZ - Standard Deviation of Body Gyroscopic motion along Z axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkMeanX - Mean of Body Gyroscopic Jerk along X axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkMeanY - Mean of Body Gyroscopic Jerk along Y axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkMeanZ - Mean of Body Gyroscopic Jerk along Z axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkStdX - Standard Deviation of Body Gyroscopic Jerk along X axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkStdY - Standard Deviation of Body Gyroscopic Jerk along Y axis measured in time domain (numeric)
+ timeBodyGyroscopeJerkStdZ - Standard Deviation of Body Gyroscopic Jerk along Z axis measured in time domain (numeric)
+ timeBodyAccelerationMagnitudeMean - Mean of Body Acceleration Magnitude measured in time domain (numeric)
+ timeBodyAccelerationMagnitudeStd - Standard Deviation of Body Acceleration Magnitude measured in time domain (numeric)
+ timeGravityAccelerationMagnitudeMean - Mean of Gravity Acceleration Magnitude measured in time domain (numeric)
+ timeGravityAccelerationMagnitudeStd - Standard Deviation of Gravity Acceleration Magnitude measured in time domain (numeric)
+ timeBodyAccelerationJerkMagnitudeMean - Mean of Body Acceleration Jerk Magnitude measured in time domain (numeric)
+ timeBodyAccelerationJerkMagnitudeStd - Standard Deviation of Body Acceleration Jerk Magnitude measured in time domain (numeric)
+ timeBodyGyroscopeMagnitudeMean - Mean of Body Gyroscopic motion Magnitude measured in time domain (numeric)
+ timeBodyGyroscopeMagnitudeStd - Standard Deviation of Body Gyroscopic motion Magnitude measured in time domain (numeric)
+ timeBodyGyroscopeJerkMagnitudeMean - Mean of Body Gyroscopic Jerk Magnitude measured in time domain (numeric)
+ timeBodyGyroscopeJerkMagnitudeStd - Standard Deviation of Body Gyroscopic Jerk Magnitude measured in time domain (numeric)
+ frequencyBodyAccelerationMeanX - Mean of Body Acceleration along X axis measured in frequency domain (numeric)
frequencyBodyAccelerationMeanY - Mean of Body Acceleration along Y axis measured in frequency domain (numeric)
frequencyBodyAccelerationMeanZ - Mean of Body Acceleration along Z axis measured in frequency domain (numeric)
frequencyBodyAccelerationStdX - Standard Deviation of Body Acceleration along X axis measured in frequency domain (numeric)
frequencyBodyAccelerationStdY - Standard Deviation of Body Acceleration along Y axis measured in frequency domain (numeric)
frequencyBodyAccelerationStdZ - Standard Deviation of Body Acceleration along Z axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkMeanX - Mean of Body Acceleration Jerk along X axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkMeanY - Mean of Body Acceleration Jerk along Y axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkMeanZ - Mean of Body Acceleration Jerk along Z axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkStdX - Standard Deviation of Body Acceleration Jerk along X axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkStdY - Standard Deviation of Body Acceleration Jerk along Y axis measured in frequency domain (numeric)
frequencyBodyAccelerationJerkStdZ - Standard Deviation of Body Acceleration Jerk along Z axis measured in frequency domain (numeric)
frequencyBodyGyroscopeMeanX - Mean of Body Gyroscopic motion along X axis measured in frequency domain (numeric)
frequencyBodyGyroscopeMeanY - Mean of Body Gyroscopic motion along Y axis measured in frequency domain (numeric)
frequencyBodyGyroscopeMeanZ - Mean of Body Gyroscopic motion along Z axis measured in frequency domain (numeric)
frequencyBodyGyroscopeStdX - Standard Deviation of Body Gyroscopic motion along X axis measured in frequency domain (numeric)
frequencyBodyGyroscopeStdY - Standard Deviation of Body Gyroscopic motion along Y axis measured in frequency domain (numeric)
frequencyBodyGyroscopeStdZ - Standard Deviation of Body Gyroscopic motion along Z axis measured in frequency domain (numeric)
frequencyBodyAccelerationMagnitudeMean - Mean of Body Acceleration Magnitude measured in frequency domain (numeric)
frequencyBodyAccelerationMagnitudeStd - Standard Deviation of Body Acceleration Magnitude measured in frequency domain (numeric)
frequencyBodyAccelerationJerkMagnitudeMean - Mean of Body Acceleration Jerk Magnitude measured in frequency domain (numeric)
frequencyBodyAccelerationJerkMagnitudeStd - Standard Deviation of Body Acceleration Jerk Magnitude measured in frequency domain (numeric)
frequencyBodyGyroscopeMagnitudeMean - Mean of Body Gyroscopic motion Magnitude measured in frequency domain (numeric)
frequencyBodyGyroscopeMagnitudeStd - Standard Deviation of Body Gyroscopic motion Magnitude measured in frequency domain (numeric)
frequencyBodyGyroscopeJerkMagnitudeMean - Mean of Body Gyroscopic Jerk Magnitude measured in frequency domain (numeric)
frequencyBodyGyroscopeJerkMagnitudeStdDev - Standard Deviation of Body Gyroscopic Jerk Magnitude measured in frequency domain (numeric) 



