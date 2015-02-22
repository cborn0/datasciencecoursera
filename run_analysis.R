#You should create one R script called run_analysis.R that does the following. 
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


library(dplyr)

# 1. Merges the training and the test sets to create one data set.
filepath = 'C:/Users/cborn0/Google Drive/Coursera/UCI HAR Dataset'

# LOAD TEST DATA
XData <- read.table(paste(filepath,'/test/X_test.txt',sep = ''))
YData <- read.table(paste(filepath,'/test/Y_test.txt',sep = ''))
SData <- read.table(paste(filepath,'/test/subject_test.txt',sep = ''))

# LOAD TRAIN DATA
XData2 <- read.table(paste(filepath,'/train/X_train.txt',sep = ''))
YData2 <- read.table(paste(filepath,'/train/y_train.txt',sep = ''))
SData2 <- read.table(paste(filepath,'/train/subject_train.txt',sep = ''))

# LOAD FEATURE DATA
features <- read.table(paste(filepath,'/features.txt', sep=''))
f <- features[[2]]

# ADD COLUM NAMES TO DATA FRAMES
names(XData)  <- f
names(XData2) <- f

names(YData) <- 'Activity'
names(YData2) <- 'Activity'

names(SData) <- 'Subject'
names(SData2) <- 'Subject'
# MERGE TEST AND TRAIN
XData <- rbind(XData,XData2)
YData <- rbind(YData,YData2)
SData <- rbind(SData,SData2)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement.  

# FIND INDICES OF COLUMNS WHICH CONTAIN STRING 'mean' OR 'std'

mean_std_cols <- grep('mean|std', f)

#USE INDICES TO SUBSET DATA
filteredXData <- XData[,mean_std_cols ]


# 3. Uses descriptive activity names to name the activities in the data set

# LABEL EACH ROW WITH ACTIVITY NAMES AND SUBJECT USING cbind()  


filteredXData <- cbind(YData, filteredXData)
filteredXData <- cbind(SData, filteredXData)

# RECODE ACTIVITY VALUES
filteredXData$Activity[filteredXData$Activity==1] <- 'WALKING'
filteredXData$Activity[filteredXData$Activity==2] <- 'WALKING_UPSTAIRS'
filteredXData$Activity[filteredXData$Activity==3] <- 'WALKING_DOWNSTAIRS'
filteredXData$Activity[filteredXData$Activity==4] <- 'SITTING'
filteredXData$Activity[filteredXData$Activity==5] <- 'STANDING'
filteredXData$Activity[filteredXData$Activity==6] <- 'LAYING'



# 4. Appropriately labels the data set with descriptive variable names. 

# COMPLETED EARLIER



# 5. From the data set in step 4, creates a second, independent tidy 
#    data set with the average of each variable for 
#    each activity and each subject.


GroupedData <- group_by(filteredXData,Activity,Subject)
SummarizedData <-  GroupedData %>% summarise_each(funs(mean))

write.table(SummarizedData, file = "SummarizedData.txt",row.names=FALSE)
