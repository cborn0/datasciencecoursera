Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. Each value represents the mean of all measurements over a given Subject/Activity pair				
				
Column 	Observed Values			
				
Activity	WALKING
          WALKING_UPSTAIRS
          WALKING_DOWNSTAIRS 
          SITTING
          STANDING
          LAYING			
Subject	          0 < value < 30			
tBodyAcc-mean()-X	0 < value < 1			
tBodyAcc-mean()-Y	0 < value < 1			
tBodyAcc-mean()-Z	0 < value < 1			
tBodyAcc-std()-X	0 < value < 1			
tBodyAcc-std()-Y	0 < value < 1			
tBodyAcc-std()-Z	0 < value < 1			
tGravityAcc-mean()-X	0 < value < 1			
tGravityAcc-mean()-Y	0 < value < 1			
tGravityAcc-mean()-Z	0 < value < 1			
tGravityAcc-std()-X	0 < value < 1			
tGravityAcc-std()-Y	0 < value < 1			
tGravityAcc-std()-Z	0 < value < 1			
tBodyAccJerk-mean()-X	0 < value < 1			
tBodyAccJerk-mean()-Y	0 < value < 1			
tBodyAccJerk-mean()-Z	0 < value < 1			
tBodyAccJerk-std()-X	0 < value < 1			
tBodyAccJerk-std()-Y	0 < value < 1			
tBodyAccJerk-std()-Z	0 < value < 1			
tBodyGyro-mean()-X	0 < value < 1			
tBodyGyro-mean()-Y	0 < value < 1			
tBodyGyro-mean()-Z	0 < value < 1			
tBodyGyro-std()-X	0 < value < 1			
tBodyGyro-std()-Y	0 < value < 1			
tBodyGyro-std()-Z	0 < value < 1			
tBodyGyroJerk-mean()-X	0 < value < 1			
tBodyGyroJerk-mean()-Y	0 < value < 1			
tBodyGyroJerk-mean()-Z	0 < value < 1			
tBodyGyroJerk-std()-X	0 < value < 1			
tBodyGyroJerk-std()-Y	0 < value < 1			
tBodyGyroJerk-std()-Z	0 < value < 1			
tBodyAccMag-mean()	0 < value < 1			
tBodyAccMag-std()	0 < value < 1			
tGravityAccMag-mean()	0 < value < 1			
tGravityAccMag-std()	0 < value < 1			
tBodyAccJerkMag-mean()	0 < value < 1			
tBodyAccJerkMag-std()	0 < value < 1			
tBodyGyroMag-mean()	0 < value < 1			
tBodyGyroMag-std()	0 < value < 1			
tBodyGyroJerkMag-mean()	0 < value < 1			
tBodyGyroJerkMag-std()	0 < value < 1			
fBodyAcc-mean()-X	0 < value < 1			
fBodyAcc-mean()-Y	0 < value < 1			
fBodyAcc-mean()-Z	0 < value < 1			
fBodyAcc-std()-X	0 < value < 1			
fBodyAcc-std()-Y	0 < value < 1			
fBodyAcc-std()-Z	0 < value < 1			
fBodyAcc-meanFreq()-X	0 < value < 1			
fBodyAcc-meanFreq()-Y	0 < value < 1			
fBodyAcc-meanFreq()-Z	0 < value < 1			
fBodyAccJerk-mean()-X	0 < value < 1			
fBodyAccJerk-mean()-Y	0 < value < 1			
fBodyAccJerk-mean()-Z	0 < value < 1			
fBodyAccJerk-std()-X	0 < value < 1			
fBodyAccJerk-std()-Y	0 < value < 1			
fBodyAccJerk-std()-Z	0 < value < 1			
fBodyAccJerk-meanFreq()-X	0 < value < 1			
fBodyAccJerk-meanFreq()-Y	0 < value < 1			
fBodyAccJerk-meanFreq()-Z	0 < value < 1			
fBodyGyro-mean()-X	0 < value < 1			
fBodyGyro-mean()-Y	0 < value < 1			
fBodyGyro-mean()-Z	0 < value < 1			
fBodyGyro-std()-X	0 < value < 1			
fBodyGyro-std()-Y	0 < value < 1			
fBodyGyro-std()-Z	0 < value < 1			
fBodyGyro-meanFreq()-X	0 < value < 1			
fBodyGyro-meanFreq()-Y	0 < value < 1			
fBodyGyro-meanFreq()-Z	0 < value < 1			
fBodyAccMag-mean()	0 < value < 1			
fBodyAccMag-std()	0 < value < 1			
fBodyAccMag-meanFreq()	0 < value < 1			
fBodyBodyAccJerkMag-mean()	0 < value < 1			
fBodyBodyAccJerkMag-std()	0 < value < 1			
fBodyBodyAccJerkMag-meanFreq()	0 < value < 1			
fBodyBodyGyroMag-mean()	0 < value < 1			
fBodyBodyGyroMag-std()	0 < value < 1			
fBodyBodyGyroMag-meanFreq()	0 < value < 1			
fBodyBodyGyroJerkMag-mean()	0 < value < 1			
fBodyBodyGyroJerkMag-std()	0 < value < 1			
fBodyBodyGyroJerkMag-meanFreq()	0 < value < 1			
