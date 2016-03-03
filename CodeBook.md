# Code Book - Getting and Cleaning Data Course Project

This code book is prepared as a part of the Project Assignment for the Coursera Course - [Getting and Cleaning Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

## Data Collection

The raw data represents [the data collected from the accelerometers from the Samsung Galaxy S smartphone](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The data is generated from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Training subjects.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Test subjects.


## Data Cleaning

#### Step 1 - Assign Activity Names

Use appropriate activity names for each measurement in the Training labels and the Test labels refering the link between the class labels with their activity name from 'activity_labels.txt'


#### Step 2 - Label Variable Names

Update variable names from 'features.txt' to the Training set and the Test set. Label the Training subjects and the Test subjects. Also label the activity in the Training labels and the Test labels.

#### Step 3 - Extract Mean and Standard Deviation

Extracts only the measurements on the mean and standard deviation variables for each measurement from the Training set and the Test set.

#### Step 4 - Create Tidy Data Set

Combine the Subject, Activity and Measurements for Training and Test and merge the teo datasets to generate UCIdataset.
Aggregate the measurements to show average of each variable for each activity and each subject in UCIsummary.


## Output

UCIdataset and UCIsummary data sets in CSV format

#### Fields
-     subject:  Subject 1 - 30
     
-     activity:  Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying
     
-     tBodyAcc-mean-X:  Accelerometer Time Body Mean measurement
     
-     tBodyAcc-mean-Y:  Accelerometer Time Body Mean measurement
     
-     tBodyAcc-mean-Z:  Accelerometer Time Body Mean measurement
     
-     tGravityAcc-mean-X:  Accelerometer Time Gravity Mean measurement
     
-     tGravityAcc-mean-Y:  Accelerometer Time Gravity Mean measurement
     
-     tGravityAcc-mean-Z:  Accelerometer Time Gravity Mean measurement
     
-     tBodyAccJerk-mean-X:  Accelerometer Time Body Mean measurement
     
-     tBodyAccJerk-mean-Y:  Accelerometer Time Body Mean measurement
     
-     tBodyAccJerk-mean-Z:  Accelerometer Time Body Mean measurement
     
-     tBodyGyro-mean-X:  Gyroscope Time Body Mean measurement
     
-     tBodyGyro-mean-Y:  Gyroscope Time Body Mean measurement
     
-     tBodyGyro-mean-Z:  Gyroscope Time Body Mean measurement
     
-     tBodyGyroJerk-mean-X:  Gyroscope Time Body Mean measurement
     
-     tBodyGyroJerk-mean-Y:  Gyroscope Time Body Mean measurement
     
-     tBodyGyroJerk-mean-Z:  Gyroscope Time Body Mean measurement
     
-     tBodyAccMag-mean:  Accelerometer Time Body Mean measurement
     
-     tGravityAccMag-mean:  Accelerometer Time Gravity Mean measurement
     
-     tBodyAccJerkMag-mean:  Accelerometer Time Body Mean measurement
     
-     tBodyGyroMag-mean:  Gyroscope Time Body Mean measurement
     
-     tBodyGyroJerkMag-mean:  Gyroscope Time Body Mean measurement
     
-     fBodyAcc-mean-X:  Accelerometer Frequency Body Mean measurement
     
-     fBodyAcc-mean-Y:  Accelerometer Frequency Body Mean measurement
     
-     fBodyAcc-mean-Z:  Accelerometer Frequency Body Mean measurement
     
-     fBodyAccJerk-mean-X:  Accelerometer Frequency Body Mean measurement
     
-     fBodyAccJerk-mean-Y:  Accelerometer Frequency Body Mean measurement
     
-     fBodyAccJerk-mean-Z:  Accelerometer Frequency Body Mean measurement
     
-     fBodyGyro-mean-X:  Gyroscope Frequency Body Mean measurement
     
-     fBodyGyro-mean-Y:  Gyroscope Frequency Body Mean measurement
     
-     fBodyGyro-mean-Z:  Gyroscope Frequency Body Mean measurement
     
-     fBodyAccMag-mean:  Accelerometer Frequency Body Mean measurement
     
-     fBodyBodyAccJerkMag-mean:  Accelerometer Frequency Body Mean measurement
     
-     fBodyBodyGyroMag-mean:  Gyroscope Frequency Body Mean measurement
     
-     fBodyBodyGyroJerkMag-mean:  Gyroscope Frequency Body Mean measurement
     
-     tBodyAcc-std-X:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyAcc-std-Y:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyAcc-std-Z:  Accelerometer Time Body Standard Deviation measurement
     
-     tGravityAcc-std-X:  Accelerometer Time Gravity Standard Deviation measurement
     
-     tGravityAcc-std-Y:  Accelerometer Time Gravity Standard Deviation measurement
     
-     tGravityAcc-std-Z:  Accelerometer Time Gravity Standard Deviation measurement
     
-     tBodyAccJerk-std-X:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyAccJerk-std-Y:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyAccJerk-std-Z:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyGyro-std-X:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyro-std-Y:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyro-std-Z:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyroJerk-std-X:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyroJerk-std-Y:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyroJerk-std-Z:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyAccMag-std:  Accelerometer Time Body Standard Deviation measurement
     
-     tGravityAccMag-std:  Accelerometer Time Gravity Standard Deviation measurement
     
-     tBodyAccJerkMag-std:  Accelerometer Time Body Standard Deviation measurement
     
-     tBodyGyroMag-std:  Gyroscope Time Body Standard Deviation measurement
     
-     tBodyGyroJerkMag-std:  Gyroscope Time Body Standard Deviation measurement
     
-     fBodyAcc-std-X:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyAcc-std-Y:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyAcc-std-Z:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyAccJerk-std-X:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyAccJerk-std-Y:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyAccJerk-std-Z:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyGyro-std-X:  Gyroscope Frequency Body Standard Deviation measurement
     
-     fBodyGyro-std-Y:  Gyroscope Frequency Body Standard Deviation measurement
     
-     fBodyGyro-std-Z:  Gyroscope Frequency Body Standard Deviation measurement
     
-     fBodyAccMag-std:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyBodyAccJerkMag-std:  Accelerometer Frequency Body Standard Deviation measurement
     
-     fBodyBodyGyroMag-std:  Gyroscope Frequency Body Standard Deviation measurement
     
-     fBodyBodyGyroJerkMag-std:  Gyroscope Frequency Body Standard Deviation measurement



