Codebook.md
===========

This code book contains data dictionary and also the highlights of the transformations to the original data

###Data dictionary for  result.txt

**sub_id**: Identifier for the subject who participated in the trial, Integer values:1 to 30

**act**:Activitiy performed
```
factor with the following character values
    WALKING	: Subject is walking on plan area
    WALKING_UPSTAIRS : Subject is climbing up stairs
    WALKING_DOWNSTAIRS: Subject is stepping down stairs
    SITTING : Subject is sitting
    STANDING : Subject is standing
    LAYING: Subject is laying
```

**Other variables**:
```
Mean of the the following descriptions is the resulting value that is stored.
Values are numerical  normalised to fall between -1 and 1


tBodyAcc-mean()-X-mean : time domain- body acceleration signal Mean value along X axis
tBodyAcc-mean()-Y-mean : time domain- body acceleration signal Mean value along Y axis
tBodyAcc-mean()-Z-mean : time domain- body acceleration signal Mean value along Z axis
tBodyAcc-std()-X-mean : time domain- body acceleration signal Standard deviation along X axis
tBodyAcc-std()-Y-mean : time domain- body acceleration signal Standard deviation along Y axis
tBodyAcc-std()-Z-mean : time domain- body acceleration signal Standard deviation along Z axis
tGravityAcc-mean()-X-mean : time domain- gravity accleration signal Mean value along X axis
tGravityAcc-mean()-Y-mean : time domain- gravity accleration signal Mean value along Y axis
tGravityAcc-mean()-Z-mean : time domain- gravity accleration signal Mean value along Z axis
tGravityAcc-std()-X-mean : time domain- gravity accleration signal Standard deviation along X axis
tGravityAcc-std()-Y-mean : time domain- gravity accleration signal Standard deviation along Y axis
tGravityAcc-std()-Z-mean : time domain- gravity accleration signal Standard deviation along Z axis
tBodyAccJerk-mean()-X-mean : time domain- body linear acceleration Mean value along X axis
tBodyAccJerk-mean()-Y-mean : time domain- body linear acceleration Mean value along Y axis
tBodyAccJerk-mean()-Z-mean : time domain- body linear acceleration Mean value along Z axis
tBodyAccJerk-std()-X-mean : time domain- body linear acceleration Standard deviation along X axis
tBodyAccJerk-std()-Y-mean : time domain- body linear acceleration Standard deviation along Y axis
tBodyAccJerk-std()-Z-mean : time domain- body linear acceleration Standard deviation along Z axis
tBodyGyro-mean()-X-mean : time domain- body angular velocity signal Mean value along X axis
tBodyGyro-mean()-Y-mean : time domain- body angular velocity signal Mean value along Y axis
tBodyGyro-mean()-Z-mean : time domain- body angular velocity signal Mean value along Z axis
tBodyGyro-std()-X-mean : time domain- body angular velocity signal Standard deviation along X axis
tBodyGyro-std()-Y-mean : time domain- body angular velocity signal Standard deviation along Y axis
tBodyGyro-std()-Z-mean : time domain- body angular velocity signal Standard deviation along Z axis
tBodyGyroJerk-mean()-X-mean : time domain- body angular velocity Mean value along X axis
tBodyGyroJerk-mean()-Y-mean : time domain- body angular velocity Mean value along Y axis
tBodyGyroJerk-mean()-Z-mean : time domain- body angular velocity Mean value along Z axis
tBodyGyroJerk-std()-X-mean : time domain- body angular velocity Standard deviation along X axis
tBodyGyroJerk-std()-Y-mean : time domain- body angular velocity Standard deviation along Y axis
tBodyGyroJerk-std()-Z-mean : time domain- body angular velocity Standard deviation along Z axis
tBodyAccMag-mean()-mean : time domain- body linear accelration magnitude Mean value
tBodyAccMag-std()-mean : time domain- body linear accelration magnitude Standard deviation
tGravityAccMag-mean()-mean : time domain- gravity acceleration magnitude Mean value
tGravityAccMag-std()-mean : time domain- gravity acceleration magnitude Standard deviation
tBodyAccJerkMag-mean()-mean : time domain- body linear acceleration  magnitude Mean value
tBodyAccJerkMag-std()-mean : time domain- body linear acceleration  magnitude Standard deviation
tBodyGyroMag-mean()-mean : time domain- body raw gyroscope magnitude Mean value
tBodyGyroMag-std()-mean : time domain- body raw gyroscope magnitude Standard deviation
tBodyGyroJerkMag-mean()-mean : time domain- body angular velocity magnitude Mean value
tBodyGyroJerkMag-std()-mean : time domain- body angular velocity magnitude Standard deviation
fBodyAcc-mean()-X-mean : freq domain- body acceleration signal Mean value along X axis
fBodyAcc-mean()-Y-mean : freq domain- body acceleration signal Mean value along Y axis
fBodyAcc-mean()-Z-mean : freq domain- body acceleration signal Mean value along Z axis
fBodyAcc-std()-X-mean : freq domain- body acceleration signal Standard deviation along X axis
fBodyAcc-std()-Y-mean : freq domain- body acceleration signal Standard deviation along Y axis
fBodyAcc-std()-Z-mean : freq domain- body acceleration signal Standard deviation along Z axis
fBodyAcc-meanFreq()-X-mean : freq domain- body acceleration signal Weighted average of the frequency components to obtain a mean frequency along X axis
fBodyAcc-meanFreq()-Y-mean : freq domain- body acceleration signal Weighted average of the frequency components to obtain a mean frequency along Y axis
fBodyAcc-meanFreq()-Z-mean : freq domain- body acceleration signal Weighted average of the frequency components to obtain a mean frequency along Z axis
fBodyAccJerk-mean()-X-mean : freq domain- body linear acceleration Mean value along X axis
fBodyAccJerk-mean()-Y-mean : freq domain- body linear acceleration Mean value along Y axis
fBodyAccJerk-mean()-Z-mean : freq domain- body linear acceleration Mean value along Z axis
fBodyAccJerk-std()-X-mean : freq domain- body linear acceleration Standard deviation along X axis
fBodyAccJerk-std()-Y-mean : freq domain- body linear acceleration Standard deviation along Y axis
fBodyAccJerk-std()-Z-mean : freq domain- body linear acceleration Standard deviation along Z axis
fBodyAccJerk-meanFreq()-X-mean : freq domain- body linear acceleration Weighted average of the frequency components to obtain a mean frequency along X axis
fBodyAccJerk-meanFreq()-Y-mean : freq domain- body linear acceleration Weighted average of the frequency components to obtain a mean frequency along Y axis
fBodyAccJerk-meanFreq()-Z-mean : freq domain- body linear acceleration Weighted average of the frequency components to obtain a mean frequency along Z axis
fBodyGyro-mean()-X-mean : freq domain- body angular velocity signal Mean value along X axis
fBodyGyro-mean()-Y-mean : freq domain- body angular velocity signal Mean value along Y axis
fBodyGyro-mean()-Z-mean : freq domain- body angular velocity signal Mean value along Z axis
fBodyGyro-std()-X-mean : freq domain- body angular velocity signal Standard deviation along X axis
fBodyGyro-std()-Y-mean : freq domain- body angular velocity signal Standard deviation along Y axis
fBodyGyro-std()-Z-mean : freq domain- body angular velocity signal Standard deviation along Z axis
fBodyGyro-meanFreq()-X-mean : freq domain- body angular velocity signal Weighted average of the frequency components to obtain a mean frequency along X axis
fBodyGyro-meanFreq()-Y-mean : freq domain- body angular velocity signal Weighted average of the frequency components to obtain a mean frequency along Y axis
fBodyGyro-meanFreq()-Z-mean : freq domain- body angular velocity signal Weighted average of the frequency components to obtain a mean frequency along Z axis
fBodyAccMag-mean()-mean : freq domain- body linear accelration magnitude Mean value
fBodyAccMag-std()-mean : freq domain- body linear accelration magnitude Standard deviation
fBodyAccMag-meanFreq()-mean : freq domain- body linear accelration magnitude Weighted average of the frequency components to obtain a mean frequency
fBodyBodyAccJerkMag-mean()-mean : freq domain- body linear acceleration magnitude Mean value
fBodyBodyAccJerkMag-std()-mean : freq domain- body linear acceleration magnitude Standard deviation
fBodyBodyAccJerkMag-meanFreq()-mean : freq domain- body linear acceleration magnitude Weighted average of the frequency components to obtain a mean frequency
fBodyBodyGyroMag-mean()-mean : freq domain- body angular velocity magnitude Mean value
fBodyBodyGyroMag-std()-mean : freq domain- body angular velocity magnitude Standard deviation
fBodyBodyGyroMag-meanFreq()-mean : freq domain- body angular velocity magnitude Weighted average of the frequency components to obtain a mean frequency
fBodyBodyGyroJerkMag-mean()-mean : freq domain- body angular velocity magnitude Mean value
fBodyBodyGyroJerkMag-std()-mean : freq domain- body angular velocity magnitude Standard deviation
fBodyBodyGyroJerkMag-meanFreq()-mean : freq domain- body angular velocity magnitude Weighted average of the frequency components to obtain a mean frequency
```

###Transformations

Return the tidy dataset from the project
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This consists  of 
* Subject 'id' vector (ignores NA values)
* Activity label.
* time domain and frequency domain variable means for all the variables which contain
 various mean,std measurements of total acceleration, body acceleration, angular velocity
 where applicable along the three axes.

**The measurements of the mean and standard deviation are interepreted as the statistical functions -mean() and -std()**
  
 
