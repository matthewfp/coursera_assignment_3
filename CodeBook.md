# Tidy data set code book

## Feature information
The features available are a summarisation of training and test data sets available at *https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip*

The original data contained information about data captured from accelerometers and gyroscopes in a test of 30 subjects, while performing several activities. Each subject performed each activity a number of times, and each time the mean and standard devation of the accelerometer and gyroscope readings were calculated, among other things.

The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 - tBodyAcc-XYZ
 - tGravityAcc-XYZ
 - tBodyAccJerk-XYZ
 - tBodyGyro-XYZ
 - tBodyGyroJerk-XYZ
 - tBodyAccMag
 - tGravityAccMag
 - tBodyAccJerkMag
 - tBodyGyroMag
 - tBodyGyroJerkMag
 - fBodyAcc-XYZ
 - fBodyAccJerk-XYZ
 - fBodyGyro-XYZ
 - fBodyAccMag
 - fBodyAccJerkMag
 - fBodyGyroMag
 - fBodyGyroJerkMag

The relevant set of variables that were estimated from these signals are: 

 - mean(): Mean value
 - std(): Standard deviation

**This tidy data set contains the average of the mean and standard deviation of the above features for each subject performing each activity. The units for the linear acceleration is 'g' and for angular velocity is radians/second.**

## Feature list
 - subject_id: The id of the subject being studied.
 - activity: The activity that the subject was performing.
 - tBodyAcc-mean()-XYZ-mean: mean of feature described above
 - tBodyAcc-std()-XYZ-mean: mean of feature described above
 - tGravityAcc-mean()-XYZ-mean: mean of feature described above
 - tGravityAcc-std()-XYZ-mean: mean of feature described above
 - tBodyAccJerk-mean()-XYZ-mean: mean of feature described above
 - tBodyAccJerk-std()-XYZ-mean: mean of feature described above
 - tBodyGyro-mean()-XYZ-mean: mean of feature described above
 - tBodyGyro-std()-XYZ-mean: mean of feature described above
 - tBodyGyroJerk-mean()-XYZ-mean: mean of feature described above
 - tBodyGyroJerk-std()-XYZ-mean: mean of feature described above
 - tBodyAccMag-mean()-mean: mean of feature described above
 - tBodyAccMag-std()-mean: mean of feature described above
 - tGravityAccMag-mean()-mean: mean of feature described above
 - tGravityAccMag-std()-mean: mean of feature described above
 - tBodyAccJerkMag-mean()-mean: mean of feature described above
 - tBodyAccJerkMag-std()-mean: mean of feature described above
 - tBodyGyroMag-mean()-mean: mean of feature described above
 - tBodyGyroMag-std()-mean: mean of feature described above
 - tBodyGyroJerkMag-mean()-mean: mean of feature described above
 - tBodyGyroJerkMag-std()-mean: mean of feature described above
 - fBodyAcc-XYZ-mean: mean of feature described above
 - fBodyAcc-std()-XYZ-mean: mean of feature described above
 - fBodyAccJerk-XYZ-mean: mean of feature described above
 - fBodyAccJerk-std()-XYZ-mean: mean of feature described above
 - fBodyGyro-XYZ-mean: mean of feature described above
 - fBodyGyro-std()-XYZ-mean: mean of feature described above
 - fBodyAccMag-mean: mean of feature described above
 - fBodyAccMag-std()-mean: mean of feature described above
 - fBodyAccJerkMag-mean: mean of feature described above
 - fBodyAccJerkMag-std()-mean: mean of feature described above
 - fBodyGyroMag-mean: mean of feature described above
 - fBodyGyroMag-std()-mean: mean of feature described above
 - fBodyGyroJerkMag-mean: mean of feature described above
 - fBodyGyroJerkMag-std()-mean: mean of feature described above
 