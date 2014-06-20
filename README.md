
## Description of run_analysis.R script 
========================================================

### Requirement 1: Merges the training and the test sets to create one data set.
-Training data set was created as it follows:
  The files *subject_train.txt*, *X_train.txt* and *y_train.txt* were read by _read.table()_
  and afterwards the resulting data.frames were column bound(*cbind*), creating a new data.frame called *train_df*.
  
-Testing data set was created in the same way by reading with *read.table()* the files 
*subject_test.txt*,*X_test.txt*,*y_test.txt* and column binding the resulting dataframes into a new data.frame called *testing_df*.

-A new data.frame, *merged_df*, was created by row binding *train_df* and *testing_df*.

-At this  moment the raw data from testing folder and training folder was contained into **merged_df**.

### Requirement 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
-From the existing 563 variables of **merged_df** I intended to keep only those that
included either the string "*mean()* or the string *std()* into their names(the position of these matches could be anywhere in the name, not only at the end).
-The file *features.txt* was read into a data.frame, *features_df*, afterwards I did
a subset into *mean_avg_features_df* that was used later to subset **merged_df** into **tidy_1**, resulting this data.frame with only **81** features.

### Requirement 4: Appropriately labels the data set with descriptive variable names. 
This was done before **requirement 3** without changing  in any way the final data. I found it easier to change the column names before changing the content for the column activity.
The original names were used as the names of the columns in **tidy_1**
At this moment we have a dataframe tidy_1 with the first 2 columns representing the subject id and activity id while the remaining 79 columns represent activities with descriptive activity names.

### Requirement 3: Uses descriptive activity names to name the activities in the data set 
For this task I hardcoded into a vector the name of the activities(*STANDING...*) and I used this vector to create a column *coloana_activitati* that was used
into a new created **tidy_2** data frame.

### Requirement 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

This was done using function **aggregate()**, the mean was calculated for columns 3:81 of **tidy_2** creating the final data frame called **xx**
The labels of the columns 3:81 of this data frame are of the form
**MEAN[ _name_of_the_function_ ]**
The contennts of the *tidy data set* **xx** data frame were written using write.table() into a file of type text called **output.txt** and they were uploaded on Coursera web site.
The columns names were preserved, the separator is the default one of this function.
You can view the data using read.table() with the parameter name of the file that you download from
Coursera web site.(I uploaded this file with the name "output.txt")











