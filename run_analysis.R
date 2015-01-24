library(dplyr)
library(plyr)

# Reading the sourse files
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")

### Merging the training and the test sets to create one data set
data <- bind_rows(train_set, test_set)

# applying labels
names(data) <- features$V2

# building a character vector of names for columns with mean value and standart deviation
mean_std_col_names <- grep('(mean[^F]|std)', names(data), value=TRUE)

### Extracting only the measurements on the mean and standard deviation for each measurement
mean_std_data <- data[, mean_std_col_names]

# creating a column with name "activity" from the training and the test labels sets
activity_col <- bind_rows(train_labels, test_labels)
names(activity_col) <- c("activity")

# creating a column with name "subject" from the subject training and the subject test sets
subject_col <- bind_rows(subject_train, subject_test)
names(subject_col) <- c("subject") 

# adding the columns with activities and subjects to the data set with measurments
mstd_data <- bind_cols(activity_col, subject_col, mean_std_data)

### Naming the activities in the data set using descriptive activity names from activity_labels
mstd_data$activity <- factor(mstd_data$activity, labels = activity_labels$V2, ordered = TRUE)

### Labeling the data set with descriptive variable names

# putting variable names in the vector var_names
var_names <- names(mstd_data)

# replacing "Acc", "Gyro", "Mag" with "Acceleration", "Gyroscope", "Magnitude" respectively
var_names <- gsub("Acc", "Acceleration", var_names)
var_names <- gsub("Gyro", "Gyroscope", var_names)
var_names <- gsub("Mag", "Magnitude", var_names)

# replacing "t" and "f" at the beginning of names with "time" and "frequency"
var_names <- gsub("^t", "time", var_names)
var_names <- gsub("^f", "frequency", var_names)

# replacing "BodyBody" with "Body"
var_names <- gsub("BodyBody", "Body", var_names)

# capitalizing words "mean" and "std"
var_names <- gsub("mean", "Mean", var_names)
var_names <- gsub("std", "Std", var_names)

# removing punctuation characters like - , ()
var_names <- gsub("[[:punct:]]", "", var_names)

# assigning vector of names back to names of variables in the data set
names(mstd_data) <- var_names


### Creating the tidy data set with the average of each variable for each activity and each subject
tidy_data <- ddply(mstd_data, .(activity, subject), colwise(mean))


# saving the tidy data set
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
