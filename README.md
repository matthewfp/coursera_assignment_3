# Assignment: Getting and Cleaning Data Course Project

## Introduction
This file gives a description of what the purpose of the project is, what files are included in the project and the instructions to produce the results.

## Purpose
 1. Download the files containing data collected from accelerometers in a particular experiment. Details of this experiment can be found at *http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones*.
 2. Extract the files.
 3. Merge the training and the test sets to create one data set.
 4. Extract the measurements on the mean and standard deviation for each measurement.
 5. Use descriptive activity names to name the activities in the data set.
 6. Appropriately label the data set with descriptive variable names.
 7. From the data set in step 6, create a second, independent tidy data set with the average of each variable for each activity and each subject.
 8. Save the tidy data set.

## Files
 - 'README.md': this file.
 - 'CodeBook.md': describes the tidy data set created and saved as per steps 7 and 8 above.
 - 'download_data.R': R script described below.
 - 'run_analysis.R': R script described below.

## Instructions
The project work is divided into two scripts, *download_data.R* and *run_analysis.R*. These are to be run one after the other in this order, from the same working directory, using the following commands.

source("download_data.R")
source("run_analysis.R")

### download_data.R
This script downloads the required data set and extracts the contents in the current working directory.

### run_analysis.R
This script assumes that the first script, *download_data.R*, was run. It then goes on to perform steps 3 to 8 described above.
