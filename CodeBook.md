This dataset describes the average of the selected variables from the original dataset. The average is calculated for each subject and activity. 

The data was downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip was decompressed manually, into the working directory of R. 
After this the script provided on GitHub was executed. This transforms the data in the follwoing steps: 

1) The following files were imported:
X_train.txt
Y_train.txt
subject_train.txt
X_test.txt
Y_test.txt
subject_test.txt
features.txt

2) These datasets were merged, with the following data: 
subject: ID of the subject
activity: ID of the activity
original variables from features.txt (for info about these, 
read features_info.txt) 

3) Only the activity, subject and the variables, which contained the string "mean" or "std" were kept.

4) From this set the name of the activites were matched with the ID, using
activity_labels.txt

5) The names of the variables were cleaned from non-alphanumeric characters, to
make it more descriptive. 

6) Using dplyr package the variables were groupd by activity and subject

7) The mean for the variables was calculated for each group set in the previous step.

The final dataset contains the following variables: 

activity
     Activity name
subject
     ID of the subject
tBodyAccmeanX
     The mean of tBodyAcc X for subject and activity
tBodyAccmeanY
     The mean of tBodyAcc Y for subject and activity
tBodyAccmeanZ
     The mean of tBodyAcc Z for subject and activity
tGravityAccmeanX
     The mean of tGravityAcc X for subject and activity
tGravityAccmeanY
     The mean of tGravityAcc Y for subject and activity
tGravityAccmeanZ
     The mean of tGravityAcc Z for subject and activity
tBodyAccJerkmeanX
     The mean of tBodyAccJerk X for subject and activity
tBodyAccJerkmeanY
     The mean of tBodyAccJerk Y for subject and activity
tBodyAccJerkmeanZ
     The mean of tBodyAccJerk Z for subject and activity
tBodyGyromeanX
     The mean of tBodyGyro X for subject and activity
tBodyGyromeanY
     The mean of tBodyGyro Y for subject and activity
tBodyGyromeanZ
     The mean of tBodyGyro Z for subject and activity
tBodyGyroJerkmeanX
     The mean of tBodyGyroJerk X for subject and activity
tBodyGyroJerkmeanY
     The mean of tBodyGyroJerk Y for subject and activity
tBodyGyroJerkmeanZ
     The mean of tBodyGyroJerk Z for subject and activity
tBodyAccMagmean
     The mean of tBodyAccMag for subject and activity
tGravityAccMagmean
     The mean of tGravityAccMag for subject and activity
tBodyAccJerkMagmean
     The mean of tBodyAccJerkMag for subject and activity
tBodyGyroMagmean
     The mean of tBodyGyroMag for subject and activity
tBodyGyroJerkMagmean
     The mean of tBodyGyroJerkMag for subject and activity
fBodyAccmeanX
     The mean of fBodyAcc X for subject and activity
fBodyAccmeanY
     The mean of fBodyAcc Y for subject and activity
fBodyAccmeanZ
     The mean of fBodyAcc Z for subject and activity
fBodyAccmeanFreqX
     The mean of fBodyAcc FreqX for subject and activity
fBodyAccmeanFreqY
     The mean of fBodyAcc FreqY for subject and activity
fBodyAccmeanFreqZ
     The mean of fBodyAcc FreqZ for subject and activity
fBodyAccJerkmeanX
     The mean of fBodyAccJerk X for subject and activity
fBodyAccJerkmeanY
     The mean of fBodyAccJerk Y for subject and activity
fBodyAccJerkmeanZ
     The mean of fBodyAccJerk Z for subject and activity
fBodyAccJerkmeanFreqX
     The mean of fBodyAccJerk FreqX for subject and activity
fBodyAccJerkmeanFreqY
     The mean of fBodyAccJerk FreqY for subject and activity
fBodyAccJerkmeanFreqZ
     The mean of fBodyAccJerk FreqZ for subject and activity
fBodyGyromeanX
     The mean of fBodyGyro X for subject and activity
fBodyGyromeanY
     The mean of fBodyGyro Y for subject and activity
fBodyGyromeanZ
     The mean of fBodyGyro Z for subject and activity
fBodyGyromeanFreqX
     The mean of fBodyGyro FreqX for subject and activity
fBodyGyromeanFreqY
     The mean of fBodyGyro FreqY for subject and activity
fBodyGyromeanFreqZ
     The mean of fBodyGyro FreqZ for subject and activity
fBodyAccMagmean
     The mean of fBodyAccMag for subject and activity
fBodyAccMagmeanFreq
     The mean of fBodyAccMag Freq for subject and activity
fBodyBodyAccJerkMagmean
     The mean of fBodyBodyAccJerkMag for subject and activity
fBodyBodyAccJerkMagmeanFreq
     The mean of fBodyBodyAccJerkMag Freq for subject and activity
fBodyBodyGyroMagmean
     The mean of fBodyBodyGyroMag for subject and activity
fBodyBodyGyroMagmeanFreq
     The mean of fBodyBodyGyroMag Freq for subject and activity
fBodyBodyGyroJerkMagmean
     The mean of fBodyBodyGyroJerkMag for subject and activity
fBodyBodyGyroJerkMagmeanFreq
     The mean of fBodyBodyGyroJerkMag Freq for subject and activity
angletBodyAccMeangravity
     The mean of angletBodyAcc gravity for subject and activity
angletBodyAccJerkMeangravityMean
     The mean of angletBodyAccJerk gravityMean for subject and activity
angletBodyGyroMeangravityMean
     The mean of angletBodyGyro gravityMean for subject and activity
angletBodyGyroJerkMeangravityMean
     The mean of angletBodyGyroJerk gravityMean for subject and activity
angleXgravityMean
     The mean of angleXgravity for subject and activity
angleYgravityMean
     The mean of angleYgravity for subject and activity
angleZgravityMean
     The mean of angleZgravity for subject and activity
tBodyAccstdX
     The standard deviation of tBodyAcc X for subject and activity
tBodyAccstdY
     The standard deviation of tBodyAcc Y for subject and activity
tBodyAccstdZ
     The standard deviation of tBodyAcc Z for subject and activity
tGravityAccstdX
     The standard deviation of tGravityAcc X for subject and activity
tGravityAccstdY
     The standard deviation of tGravityAcc Y for subject and activity
tGravityAccstdZ
     The standard deviation of tGravityAcc Z for subject and activity
tBodyAccJerkstdX
     The standard deviation of tBodyAccJerk X for subject and activity
tBodyAccJerkstdY
     The standard deviation of tBodyAccJerk Y for subject and activity
tBodyAccJerkstdZ
     The standard deviation of tBodyAccJerk Z for subject and activity
tBodyGyrostdX
     The standard deviation of tBodyGyro X for subject and activity
tBodyGyrostdY
     The standard deviation of tBodyGyro Y for subject and activity
tBodyGyrostdZ
     The standard deviation of tBodyGyro Z for subject and activity
tBodyGyroJerkstdX
     The standard deviation of tBodyGyroJerk X for subject and activity
tBodyGyroJerkstdY
     The standard deviation of tBodyGyroJerk Y for subject and activity
tBodyGyroJerkstdZ
     The standard deviation of tBodyGyroJerk Z for subject and activity
tBodyAccMagstd
     The standard deviation of tBodyAccMag for subject and activity
tGravityAccMagstd
     The standard deviation of tGravityAccMag for subject and activity
tBodyAccJerkMagstd
     The standard deviation of tBodyAccJerkMag for subject and activity
tBodyGyroMagstd
     The standard deviation of tBodyGyroMag for subject and activity
tBodyGyroJerkMagstd
     The standard deviation of tBodyGyroJerkMag for subject and activity
fBodyAccstdX
     The standard deviation of fBodyAcc X for subject and activity
fBodyAccstdY
     The standard deviation of fBodyAcc Y for subject and activity
fBodyAccstdZ
     The standard deviation of fBodyAcc Z for subject and activity
fBodyAccJerkstdX
     The standard deviation of fBodyAccJerk X for subject and activity
fBodyAccJerkstdY
     The standard deviation of fBodyAccJerk Y for subject and activity
fBodyAccJerkstdZ
     The standard deviation of fBodyAccJerk Z for subject and activity
fBodyGyrostdX
     The standard deviation of fBodyGyro X for subject and activity
fBodyGyrostdY
     The standard deviation of fBodyGyro Y for subject and activity
fBodyGyrostdZ
     The standard deviation of fBodyGyro Z for subject and activity
fBodyAccMagstd
     The standard deviation of fBodyAccMag for subject and activity
fBodyBodyAccJerkMagstd
     The standard deviation of fBodyBodyAccJerkMag for subject and activity
fBodyBodyGyroMagstd
     The standard deviation of fBodyBodyGyroMag for subject and activity
fBodyBodyGyroJerkMagstd
     The standard deviation of fBodyBodyGyroJerkMag for subject and activity
