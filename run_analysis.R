### Step 1 
### Merging the training and the test sets
### to create one data set. 

data.train <- read.table(file="./train/X_train.txt", header = FALSE, quote="\"" )
data.test <- read.table(file="./test/X_test.txt", header = FALSE, quote="\"" )


### Merging the data train and the data test 
data <- rbind(data.train, data.test)

### Deleting the data train and the data test 
rm(data.train, data.test)


### Step 2, Step 3 and Step 4 
### Extracting only the measurements on the mean 
### and standard deviation for each measurement 

### For each measurement (row) to calculate the mean 
### and the standard deviation. 



data <- data.frame( avg.measurement =  apply(data, 1 , mean), 
                     sd.measurement   =  apply(data, 1 , sd )) 


### Adding the information about the subjects 

subject.train <- read.table( file="./train/subject_train.txt", header=FALSE)
subject.test <- read.table( file="./test/subject_test.txt", header=FALSE)
subject <- rbind(subject.train, subject.test)

rm(subject.train, subject.test)

data$subject <- subject$V1

rm(subject)

### Adding the information about the activities

activity.train <- read.table( file="./train/y_train.txt", header=FALSE)
activity.test <- read.table( file="./test/y_test.txt", header=FALSE)
activity <- rbind(activity.train, activity.test)

rm(activity.train, activity.test)


data$activity <- activity$V1

rm(activity)

### Read first the file which contains the name of the 
### activities. 

activity.labels <- read.table( file="activity_labels.txt", header=FALSE)


data <- merge(data, activity.labels, by.x = "activity" , by.y = "V1", all.x = FALSE, all.y = FALSE  )
names(data)[5] <- "activity"
data$activity <- NULL


### Step 5
### Creating the tidy data set

library(dplyr)
data2 <- data %>% group_by(activity, subject ) %>% 
         summarize(mean.avg = mean(avg.measurement, na.rm = TRUE), 
                   mean.sd = mean(sd.measurement, na.rm = TRUE))


data2 

write.table(data2, file="tidy.txt", row.name=FALSE)
