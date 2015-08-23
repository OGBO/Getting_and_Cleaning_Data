# run_analysis.R
# STEP 1: Download and reading into R of required files.
setwd("\\Users\\GeeT\\Documents")
fileUR <- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
download.file(fileUR, destfile = “Samgal_S.zip”)
Samdata <- "Samgal_S.zip"
Unzip(Samdata)
# STEP 2: Combining the Test and Training data sets  CHECK how 2 READ fie 4 ~
List.files
setwd("\\Users\\GeeT\\Documents\\ UCI HAR Dataset")
Glossary <- readlines(("README.txt”)
testset <- read.table("./UCI HAR Dataset/test/X_test.txt")
View(testset) 
testlabs <- read.table("./UCI HAR Dataset/test/y_test.txt")
table(testlabs)
testsubs <- read.table("./UCI HAR Dataset/test/subject_test.txt")
table(testsubs)
trainset <- read.table("./UCI HAR Dataset/train/X_train.txt")
View(trainset)
head(trainData)
trainlabs <- read.table("./UCI HAR Dataset/train/y_train.txt")
table(trainlabs)
trainsubs <- read.table("./UCI HAR Dataset/train/subject_train.txt")
table(trainsubs)
mergdata <- rbind(trainset, testset)
dim(mergdata) # 10299*561
merglab <- rbind(trainlabs, testlabs)
dim(merglabs) # 10299*1
mergsubs <- rbind(trainSubject, testSubject)
dim(mergsubs) # 10299*1
# Step3: Extracting the measurements on the mean and standard deviation 
# for each measurement. 
featurelist <- subset(read.table("features.txt", header=FALSE), select=2)
dim(featurelist)  # 561*2
colnames(featurelist) <- "featurelist"
# Identify the data pertaining to the mean and standard deviation
To tidy the column headings of the subset, the "()" and "-" symbols in the names need to be cleaned.
featurelist$featurelist <- gsub("\\()", "-", featurelist$featurelist)
# Extract the mean and standard deviation to a separate variable called itemselect 
mn <- grep("-mean-", featurelist$featurelist)
stdv <- grep("-std-", featurelist$featurelist)
itemselect <- sort(c(mn, stdv))
# Subset the featurelist with the itemselect variable
featurelist <- featurelist$featurelist[itemselect]
