This repo is my solution to the assignement. 
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
