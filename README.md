# Script run_analysis.R


### Description 

The script run_analysis.R was created to prove the following skills: collect, work with, and clean a data set. The data set that was used are data collected from the accelerometers from the Samsung Galaxy S smartphone. You can take a look to this data in the following url:  

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

To download the data set clic in the following urL: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )


### Usage 

To use the script run_analysis.R first of all you must put this file in the directory UCI HAR Dataset which was previously decompressed from the above url. After that run the script with the following R code: 

source("run_analysis.R") 

The script performs the following actions over the UCI HAR Dataset: 

1. Merges the training and the test data sets to create one data set.
2. Extracts only the measurement on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set 
4. Appropiately labels the data set with descriptive variable names 
5. From the data set in step 4, creates a second, indepedent tidy data set with the average of each variable for each activity and each subject. 


### Arguments 

The script does not have arguments. 

### Value returned 

The script displays the tidy data set generated in the action five (see section Usage) and generates the file tidy.txt which contains the tidy data set previously mentioned. 

### Code Book 
The code book for the variables can be accessed in the file CodeBook.md. 


