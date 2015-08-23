# Getting_and_Cleaning_Data CodeBook
## Study Design
+This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.  
+Below is a thorough description of the steps and processes related to the data collection and manipulation.
+ The data was downloaded from the following website:  
+https://d396qusza4a0orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
+ The downloaded zip file was unzipped and the individual files were examined to establish their contents and glean information regarding the manner in which the contents of the txt files were structured.
+The run_analysis.R script contains the R syntax which perform entire processing of the data starting with the downloading of the zip file though to the upload of the cleaned data: 
+ Step 1 The data was downloaded as a zip file from the specified URL
+It was then unzipped on my laptop into the working directory “~/UCI HAR Dataset”, that was previously designated as the current working directory in R Studio. 
+ After reviewing the contents of the zip file and based upon the file descriptions listed in the README.txt file,
the following txt files were read into R in order to carry out the project_coursework instructions:
+ README.txt – Glossary detailing contents of below files
+ features.txt – List of all feature
+ train/X_train.txt – Training set of activity indicators
+ test/X_test.txt – Test set of activity indicators
+ train/y_train.txt – Training labels from 1 to 6 as described by the activity_labels.txt
+ test/y_test.txt – Test labels from 1 to 6 as described by the activity_labels.txt
+ train/subject_train.txt – Identification by row for each the 30 training subjects
+ test/subject_test.txt – Identification by row for each of the 30 test subjects
+ activity_labels.txt – List of the 6 individual activities as represented in the Y_train.txt and Y_test.txt files
+ Step 2 Merging the training and test datasets was performed based on the content descriptions as per the README.txt 
+ file
+ The test set indicators as listed in the X_test.txt file is read into R as one column, then the files y_test.txt and 
+ subject_test.txt were also read into R.
+ The training set indicators as listed in the X_train.txt file is read into R as one column, then the files y_ 
+ training.txt and subject_ training.txt were also read into R.
+ The the X_test.txt and X_ train.txt were merged into a singe dataframe called mergdata
+ The the, y_test.txt and y_ train.txt were merged into a singe dataframe called merglabls
+ subject_test.txt and subject_ train.txt were merged into a singe dataframe called mergsubjs
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+
+

