### Getting and Cleaning Data Course Project
This repository was created for the course project done as part of *Getting and Cleaning Data* course on Coursera. 
The project performs collecting, working with, and cleaning data, as well as preparing the tidy data set that can be used for later analysis. This project uses the data from _Human Activity Recognition Using Smartphones Data Set_ downloaded from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

Contains files:

**run_analysis.R** - the script that reads sourse data files from directory **_UCI HAR Dataset_** in the current working directory and creates a tidy data set *tidy_data*. Also, it writes  *tidy_data* to a txt file **_tidy_data.txt_** in the current directory. The script requires packages `dplyr` and `plyr`.

**CodeBook.md** - the codebook that describes the variables in the resulting data set, as well as transformations and cleaning performed on the source data sets.

**README.md** - this file.
