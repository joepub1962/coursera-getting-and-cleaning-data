#CodeBook
This is a code book that describes the variables, the data, and any transformations or work that performed to create a tidy data set.
Data source and Description:
	•	data Set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	•	Full Description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Data set info:
The dataset includes the following files:
	•	
	•	 'README.txt'
	•	'features_info.txt': Shows information about the variables used on the feature vector.
	•	- 'features.txt': List of all features.
	•	- 'activity_labels.txt': Links the class labels with their activity name.
	•	- 'train/X_train.txt': Training set.
	•	- 'train/y_train.txt': Training labels.
	•	- 'test/X_test.txt': Test set.
	•	- 'test/y_test.txt': Test labels.
	•	'features_info.txt': Shows information about the variables used on the feature vector.
	•	'features.txt': List of all features.
	•	'activity_labels.txt': Links the class labels with their activity name.
	•	'train/X_train.txt': Training set.
	•	'train/y_train.txt': Training labels.
	•	'test/X_test.txt': Test set.
	•	'test/y_test.txt': Test labels.

For more details about the data set please reference the Readme file included in the zip file 

#Steps to creating the tidy data set from the raw data files given
There are 5 steps:
	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive activity names.
	5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Description of run_analysis.R script:

	•	The following libraries must installed prior successfully execution of this skip:
	⁃	plyr  needed for join()
	⁃	reshape2  need for melt()

	•	Load both test and train data for Features into R and combine into one dataset 
	•	Load both test and train data for Subject  into R and combine into one dataset
	•	Load both test and train  data for Activity into R and combine into one dataset
	•	Load the features and activity labels.
	•	
	•	Extract the mean and standard deviation column names and data.
	•	Process the data. There are two parts processing test and train data respectively.
	•	Merge data set.


