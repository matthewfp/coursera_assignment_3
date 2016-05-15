# Download the dataset
downloadURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(downloadURL, "assignment_dataset.zip")

# Extract the contents of the zip file
unzip("assignment_dataset.zip")