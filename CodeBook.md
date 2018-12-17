# Code Book

This Code Book contains all the variables and all relevan information on the script

## Identifiers
- Subject :This represents the ID of the anonymous Test Subject

- Activity :The Type of Activity Perform when correspondong measurements are taken

Can be classified into 6 Different Activities Based on the activity labels
- WALKING: subject was walking
- WALKING_UPSTAIRS : subject was walking upstairs
- WALKING_DOWNSTAIRS: subject was walking downstairs
- SITTING : subject was sitting
- STANDING :subject was standing
- LAYING :subject was laying

## Measurements
- Time Domain Signals - Prefixed as timeDomain
- Frequency Domain Signals- Prefixed as frequencyDomain

## Time Domain Signals Includes

- timeDomainBodyAccelerometerMeanX
- timeDomainBodyAccelerometerMeanY
- timeDomainBodyAccelerometerMeanZ

- timeDomainBodyAccelerometerStandardDeviationX
- timeDomainBodyAccelerometerStandardDeviationY
- timeDomainBodyAccelerometerStandardDeviationZ

- timeDomainGravityAccelerometerMeanX
- timeDomainGravityAccelerometerMeanY
- timeDomainGravityAccelerometerMeanZ

- timeDomainGravityAccelerometerStandardDeviationX
- timeDomainGravityAccelerometerStandardDeviationY
- timeDomainGravityAccelerometerStandardDeviationZ

- timeDomainBodyAccelerometerJerkMeanX
- timeDomainBodyAccelerometerJerkMeanY
- timeDomainBodyAccelerometerJerkMeanZ

- timeDomainBodyAccelerometerJerkStandardDeviationX
- timeDomainBodyAccelerometerJerkStandardDeviationY
- timeDomainBodyAccelerometerJerkStandardDeviationZ'

- timeDomainBodyGyroscopeMeanX
- timeDomainBodyGyroscopeMeanY
- timeDomainBodyGyroscopeMeanZ

- timeDomainBodyGyroscopeStandardDeviationX
- timeDomainBodyGyroscopeStandardDeviationY
- timeDomainBodyGyroscopeStandardDeviationZ

- timeDomainBodyAccelerometerMagnitudeMean
- timeDomainBodyAccelerometerMagnitudeStandardDeviation

- timeDomainGravityAccelerometerMagnitudeMean
- timeDomainGravityAccelerometerMagnitudeStandardDeviation

- timeDomainBodyAccelerometerJerkMagnitudeMean
- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

- timeDomainBodyGyroscopeMagnitudeMean
- timeDomainBodyGyroscopeMagnitudeStandardDeviation

- timeDomainBodyGyroscopeJerkMagnitudeMean
- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

## Frequency Domain Signal Includes

- frequencyDomainBodyAccelerometerMeanX
- frequencyDomainBodyAccelerometerMeanY
- frequencyDomainBodyAccelerometerMeanZ

- frequencyDomainBodyAccelerometerStandardDeviationX
- frequencyDomainBodyAccelerometerStandardDeviationY
- frequencyDomainBodyAccelerometerStandardDeviationZ

- frequencyDomainBodyAccelerometerMeanFrequencyX
- frequencyDomainBodyAccelerometerMeanFrequencyY
- frequencyDomainBodyAccelerometerMeanFrequencyZ

- frequencyDomainBodyAccelerometerJerkMeanX
- frequencyDomainBodyAccelerometerJerkMeanY
- frequencyDomainBodyAccelerometerJerkMeanZ

- frequencyDomainBodyAccelerometerJerkStandardDeviationX
- frequencyDomainBodyAccelerometerJerkStandardDeviationY
- frequencyDomainBodyAccelerometerJerkStandardDeviationZ

- frequencyDomainBodyAccelerometerJerkMeanFrequencyX
- frequencyDomainBodyAccelerometerJerkMeanFrequencyY
- frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

- frequencyDomainBodyGyroscopeMeanX
- frequencyDomainBodyGyroscopeMeanY
- frequencyDomainBodyGyroscopeMeanZ


- frequencyDomainBodyGyroscopeStandardDeviationX
- frequencyDomainBodyGyroscopeStandardDeviationY
- frequencyDomainBodyGyroscopeStandardDeviationZ


- frequencyDomainBodyGyroscopeMeanFrequencyX
- frequencyDomainBodyGyroscopeMeanFrequencyY
- frequencyDomainBodyGyroscopeMeanFrequencyZ


- frequencyDomainBodyAccelerometerMagnitudeMean
- frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

- frequencyDomainBodyAccelerometerJerkMagnitudeMean
- frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

- frequencyDomainBodyGyroscopeMagnitudeMean
- frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
- frequencyDomainBodyGyroscopeMagnitudeMeanFrequency


- frequencyDomainBodyGyroscopeJerkMagnitudeMean
- frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
- frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

## Transformations
1. Merged the training and test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set.
4. Appropriately labeled the data set with descriptive variable names.
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

