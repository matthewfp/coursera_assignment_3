# Merge the training and the test sets to create one data set.
# First load all of the training data files
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Load all the test data files
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Bind the training and test data sets and give them names.
feature_names <- read.table("./UCI HAR Dataset/features.txt")

X <- rbind(X_train, X_test)
names(X) <- feature_names$V2

Y <- rbind(Y_train, Y_test)
names(Y) <- (c("activity"))

subjects <- rbind(subject_train, subject_test)
names(subjects) <- c("subject_id")

merged_data_set <- cbind(subjects, X, Y)

# Extract the measurements on the mean and standard deviation for each measurement.
# Find the column names that contain mean() or std().
names_to_save <- c("subject_id", grep("std|mean..-|mean..$", names(merged_data_set), value = TRUE), "activity")
merged_data_set <- merged_data_set[, names_to_save]


# Use descriptive activity names to name the activities in the data set.
merged_data_set$activity <- factor(merged_data_set$activity)

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
levels(merged_data_set$activity) <- activities$V2

# Appropriately label the data set with descriptive variable names.
names(merged_data_set)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data_set <- aggregate(merged_data_set[, -which(names(merged_data_set) %in% c("subject_id", "activity"))], list(merged_data_set$subject_id, merged_data_set$activity), mean)
names(tidy_data_set)[1:2] <- c("subject_id", "activity")
names(tidy_data_set)[3:68] <- sub("$", "-mean", names(tidy_data_set)[3:68])

# Save the tidy data set.
write.table(tidy_data_set, "tidy_data_set.txt", row.names = FALSE)