This repo is my solution to the assignement. 
CodeBook.md gives an overview of what the script does, and what each variable means in TidySet.txt
The script run_analysis.R transforms the original data. 
Original data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The script takes these data, extracts only each mean and standard deviation value, and calculates the average for each subject and activity, and outputs this in a tidy dataset. 

Here I wil describe why it fulfills each of the requirements.

Requirement 1: Merges the training and the test sets to create one data set.
  The script imports all the needed files. With the rbind function it merges them
  
Requirement 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
  The script only selects the subject, activity variables, and all the variables, which contain mean or std. This means, that only the mean and the standard deviation are extracted for each measurement. 

Requirement 3: Uses descriptive activity names to name the activities in the data set
  The script imports the activity_labels.txt file, which contains the names matched with the ID for each activity. 
  The script matches each activity ID in the set with the corresponding name. 
  
Requirement 4: Appropriately labels the data set with descriptive variable names. 
  Each variable already has the name from the y_test and y_train files. This means that they are not just a code or a letter, they are readable and descriptive. For convinience and the script removes all non-alphanumeric character from the variable names. (For example () ) This helps in the descriptivness, because it will be easier to type in the names

Requirement 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  The script uses group by and summarize from the dplyr package to extract the mean for each variable from the previous dataset. This dataset is tidy, because it fulfills all the 3 conditions:
             1. Each variable forms a column: There is a column for every variable. 
             2. Each observation forms a row: There is a separate row for each subject and activity pair. 
             3. Each type of observational unit forms a table: This data has only 1 observational unit, so only 1 table is needed
