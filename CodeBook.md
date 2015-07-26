#CodeBook

##Summary
Training and test Data sets obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones were merged and subsetted by desired feature measurements (mean or standard deviation). Averages for each activity performed by subjects were collected and written to `final.txt`.

##Definitions
`subject`(numeric id of subject)

###Activities
`activity`(name of activity performed by subject)

* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING`
* `STANDING`
* `LAYING`

###Measurements
`tBodyAccMean-X` `tBodyAccMean-Y` `tBodyAccMean-Z` `tBodyAccStd-X` `tBodyAccStd-Y` `tBodyAccStd-Z` `tGravityAccMean-X` `tGravityAccMean-Y` `tGravityAccMean-Z` `tGravityAccStd-X` `tGravityAccStd-Y` `tGravityAccStd-Z` `tBodyAccJerkMean-X` `tBodyAccJerkMean-Y` `tBodyAccJerkMean-Z` `tBodyAccJerkStd-X` `tBodyAccJerkStd-Y` `tBodyAccJerkStd-Z` `tBodyGyroMean-X` `tBodyGyroMean-Y` `tBodyGyroMean-Z` `tBodyGyroStd-X` `tBodyGyroStd-Y` `tBodyGyroStd-Z` `tBodyGyroJerkMean-X` `tBodyGyroJerkMean-Y` `tBodyGyroJerkMean-Z` `tBodyGyroJerkStd-X` `tBodyGyroJerkStd-Y` `tBodyGyroJerkStd-Z` `tBodyAccMagMean` `tBodyAccMagStd` `tGravityAccMagMean` `tGravityAccMagStd` `tBodyAccJerkMagMean` `tBodyAccJerkMagStd` `tBodyGyroMagMean` `tBodyGyroMagStd` `tBodyGyroJerkMagMean` `tBodyGyroJerkMagStd` `fBodyAccMean-X` `fBodyAccMean-Y` `fBodyAccMean-Z` `fBodyAccStd-X` `fBodyAccStd-Y` `fBodyAccStd-Z` `fBodyAccMeanFreq-X` `fBodyAccMeanFreq-Y` `fBodyAccMeanFreq-Z` `fBodyAccJerkMean-X` `fBodyAccJerkMean-Y` `fBodyAccJerkMean-Z` `fBodyAccJerkStd-X` `fBodyAccJerkStd-Y` `fBodyAccJerkStd-Z` `fBodyAccJerkMeanFreq-X` `fBodyAccJerkMeanFreq-Y` `fBodyAccJerkMeanFreq-Z` `fBodyGyroMean-X` `fBodyGyroMean-Y` `fBodyGyroMean-Z` `fBodyGyroStd-X` `fBodyGyroStd-Y` `fBodyGyroStd-Z` `fBodyGyroMeanFreq-X` `fBodyGyroMeanFreq-Y` `fBodyGyroMeanFreq-Z` `fBodyAccMagMean` `fBodyAccMagStd` `fBodyAccMagMeanFreq` `fBodyBodyAccJerkMagMean` `fBodyBodyAccJerkMagStd` `fBodyBodyAccJerkMagMeanFreq` `fBodyBodyGyroMagMean` `fBodyBodyGyroMagStd` `fBodyBodyGyroMagMeanFreq` `fBodyBodyGyroJerkMagMean` `fBodyBodyGyroJerkMagStd` `fBodyBodyGyroJerkMagMeanFreq`
