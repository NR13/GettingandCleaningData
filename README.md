# Getting and Cleaning Data Course Project
_February 29, 2016_

This repo contains the submission for the Assignment: Getting and Cleaning Data Course Project. 

## Synopsis

The goal is to prepare tidy data that can be used for later analysis. The data used for the assignment represents [data collected from the accelerometers from the Samsung Galaxy S smartphone](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The data is generated from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II).

The tidy data consists of two data files:

- UCI dataset contains mean and standard deviation measurements
- UCI Summary contains average of each variable for each activity and each subject

## Preparation

The data needs to be downloaded to local PC and unzipped in directory _./data/_. 

## Data Cleaning

Execute the R script run_analysis.R. The script checks for the raw data zip file. 
If it doesnot exist, the file is downloaded and unzipped. 

The training and the test sets to create one data set with only the measurements on the mean and standard deviation for each measurement.Descriptive activity names are used name the activities in the data set.The column names are set with descriptive variable names. 

A second independent tidy data set with the average of each variable for each activity and each subject is also created.

Two data files are downloaded to directory _./data/_. 

- [UCI dataset](https://github.com/NR13/GettingandCleaningData/blob/master/UCIdataset.txt)
- [UCI summary](https://github.com/NR13/GettingandCleaningData/blob/master/UCIsummary.txt)