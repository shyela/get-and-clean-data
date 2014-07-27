Data Dictionary
==================

This describes two data sets:

 * [Mean and Standard Deviation Values](#mean_and_std)
 * [Means of All Values by Activity and Subject](#all_means)


# <a name="common"></a>Common

## General Naming Conventions:

All columns are named in a camel-case fashion.


## Shared Columns:

The following columns are in both data sets:

 * ActivityName: The activity label that describes what the subject was doing during the measurement period
 * SubjectId: An identifier of the subject who carried out the activity


# <a name="mean_and_std"></a>First Data Set: Mean and Standard Deviation Values

This data set contains any mean and standard deviation values for each measurement in the original data set. Specifically, this means that it includes values produced by mean(), meanFreq(), and std(), as indicated by the features.txt file in the original data.

## Columns:

This data set follows the conventions outlined in [Common](#common).

### Measurement Columns:

All measurement columns are listed [below](#first_cols).

The remaining columns are adopted from the original data set structure and retain most of the conventions thereof. The primary result of which is that the column names are composed generally of several parts:
> Signal Type + Calculation + Direction (optional)

**The signal types used in this data set are:**

 * TimeBodyAcc: body linear acceleration signal
 * TimeGravityAcc: gravity linear acceleration signal
 * TimeBodyAccJerk: body linear acceleration jerk signal
 * TimeBodyGyro: body angular velocity signal
 * TimeBodyGyroJerk: body angular velocity jerk signal
 * TimeBodyAccMag: magnitude of the body linear acceleration signal
 * TimeGravityAccMag: magnitude of the gravity linear acceleration signal
 * TimeBodyAccJerkMag: magnitude of the body linear acceleration jerk signal
 * TimeBodyGyroMag: magnitude of the body angular velocity signal
 * TimeBodyGyroJerkMag: magnitude of the body angular velocity jerk signal
 * FrequencyBodyAcc: body linear acceleration signal
 * FrequencyBodyAccJerk: body linear acceleration jerk signal
 * FrequencyBodyGyro: body angular velocity signal
 * FrequencyBodyAccMag: magnitude of the body linear acceleration signal    
 * FrequencyBodyAccJerkMag: magnitude of the body linear acceleration jerk signal
 * FrequencyBodyGyroMag: magnitude of the body angular velocity signal
 * FrequencyBodyGyroJerkMag: magnitude of the body angular velocity jerk signal

*The preceding summary of the signal types is based on the documentation in the original data set; consult the documentation accompanying the original data set if you need clarification. Insight into how the original data was collected and calculated can also be found by reading the documentation accompanying the original data set. Note that the first section of the signal types listed above indicate the domain of the measurement: time or frequency. Since that difference is not relevant to this script, please consult the original data set documentation for details about it.*

**The measurement calculations used in this data set are:**

 * Mean: Mean value
 * Std: Standard deviation
 * MeanFreq: Weighted average of the frequency components to obtain a mean frequency

**The optional last part of the column name indicates the direction of the measurement, if applicable: X, Y, or Z.**

### <a name="first_cols"></a>All Measurement Columns

 * TimeBodyAccMeanX
 * TimeBodyAccMeanY    
 * TimeBodyAccMeanZ
 * TimeBodyAccStdX
 * TimeBodyAccStdY 
 * TimeBodyAccStdZ     
 * TimeGravityAccMeanX
 * TimeGravityAccMeanY 
 * TimeGravityAccMeanZ
 * TimeGravityAccStdX  
 * TimeGravityAccStdY
 * TimeGravityAccStdZ  
 * TimeBodyAccJerkMeanX
 * TimeBodyAccJerkMeanY
 * TimeBodyAccJerkMeanZ
 * TimeBodyAccJerkStdX 
 * TimeBodyAccJerkStdY
 * TimeBodyAccJerkStdZ 
 * TimeBodyGyroMeanX
 * TimeBodyGyroMeanY   
 * TimeBodyGyroMeanZ
 * TimeBodyGyroStdX    
 * TimeBodyGyroStdY
 * TimeBodyGyroStdZ    
 * TimeBodyGyroJerkMeanX
 * TimeBodyGyroJerkMeanY
 * TimeBodyGyroJerkMeanZ
 * TimeBodyGyroJerkStdX
 * TimeBodyGyroJerkStdY
 * TimeBodyGyroJerkStdZ
 * TimeBodyAccMagMean
 * TimeBodyAccMagStd   
 * TimeGravityAccMagMean
 * TimeGravityAccMagStd
 * TimeBodyAccJerkMagMean
 * TimeBodyAccJerkMagStd
 * TimeBodyGyroMagMean
 * TimeBodyGyroMagStd  
 * TimeBodyGyroJerkMagMean
 * TimeBodyGyroJerkMagStd
 * FrequencyBodyAccMeanX
 * FrequencyBodyAccMeanY
 * FrequencyBodyAccMeanZ
 * FrequencyBodyAccStdX
 * FrequencyBodyAccStdY
 * FrequencyBodyAccStdZ
 * FrequencyBodyAccMeanFreqX
 * FrequencyBodyAccMeanFreqY
 * FrequencyBodyAccMeanFreqZ
 * FrequencyBodyAccJerkMeanX
 * FrequencyBodyAccJerkMeanY
 * FrequencyBodyAccJerkMeanZ
 * FrequencyBodyAccJerkStdX
 * FrequencyBodyAccJerkStdY
 * FrequencyBodyAccJerkStdZ
 * FrequencyBodyAccJerkMeanFreqX
 * FrequencyBodyAccJerkMeanFreqY
 * FrequencyBodyAccJerkMeanFreqZ
 * FrequencyBodyGyroMeanX
 * FrequencyBodyGyroMeanY
 * FrequencyBodyGyroMeanZ
 * FrequencyBodyGyroStdX
 * FrequencyBodyGyroStdY
 * FrequencyBodyGyroStdZ
 * FrequencyBodyGyroMeanFreqX
 * FrequencyBodyGyroMeanFreqY
 * FrequencyBodyGyroMeanFreqZ
 * FrequencyBodyAccMagMean
 * FrequencyBodyAccMagStd
 * FrequencyBodyAccMagMeanFreq
 * FrequencyBodyAccJerkMagMean
 * FrequencyBodyAccJerkMagStd
 * FrequencyBodyAccJerkMagMeanFreq
 * FrequencyBodyGyroMagMean
 * FrequencyBodyGyroMagStd
 * FrequencyBodyGyroMagMeanFreq
 * FrequencyBodyGyroJerkMagMean
 * FrequencyBodyGyroJerkMagStd
 * FrequencyBodyGyroJerkMagMeanFreq


# <a name="all_means"></a>Second Data Set: Means of All Values by Activity and Subject

This data set contains the means of all reported values grouped by the activity and subject. This averaging will be applied to all reported values, whether produced by observation or calculations applied to observations.

## Columns:

This data set follows the conventions outlined in [Common](#common).

There will be a row for each combination of ActivityName and SubjectId.

### Measurement Columns:

All measurement columns are listed [below](#second_cols).

The remaining columns are adopted from the original data set structure and retain most of the conventions thereof. The primary result of which is that the column names are generally composed of several parts:
> "Mean" + Measurement Name

Most measurement names are composed of:
> Signal Type + Calculation + Direction (optional)

Specifics about how to compose these measurement column names are [below](#measurement_names).

However, the measurement names that are used for the angle() calculation do not follow this convention. Consult the documentation accompanying the original data set for more information. These measurement names will begin with "Angle" and will follow their own format. Specifics about how to compose these measurement column names are [below](#angle_calc_names).


#### <a name="measurement_names"></a>Column Names for Most Measurements

**All the measurement columns begin with the word "Mean" to denote that they are all means.**

**The signal types used in this data set are:**

 * All the signal types used in [Mean and Standard Deviation Values](#mean_and_std)

**The measurement calculations used in this data set are:**

 * All the calculation types used in [Mean and Standard Deviation Values](#mean_and_std), plus
 * Mad: Median absolute deviation 
 * Max: Largest value in array
 * Min: Smallest value in array
 * Sma: Signal magnitude area
 * Energy: Energy measure. Sum of the squares divided by the number of values. 
 * Iqr: Interquartile range 
 * Entropy: Signal entropy
 * ArCoeff: Autorregresion coefficients with Burg order equal to 4
 * Correlation: correlation coefficient between two signals
 * MaxInds: index of the frequency component with largest magnitude
 * Skewness: skewness of the frequency domain signal 
 * Kurtosis: kurtosis of the frequency domain signal 
 * BandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window (**See note below**)

**NOTE**
All measurements that use BandsEnergy produce 3 values that cannot obviously be distinguished. Therefore, all columns for such values appear 3 times in the data set. Since there is no abvious way to distinguish the columns, all are retained, but a suffix (.1 and .2) is added to 2 of the columns to differentiate them. For example:

 * MeanFrequencyBodyGyroBandsEnergy116
 * MeanFrequencyBodyGyroBandsEnergy116.1
 * MeanFrequencyBodyGyroBandsEnergy116.2

**The optional last part of the column name indicates the direction of the measurement, if applicable: X, Y, or Z.**


#### <a name="angle_calc_names"></a>Column Names for Angle Calculations

**All the column names begin with the word "Mean" to denote that they are all means.**

**The measurement names are:**

 * AngleTimeBodyAccMeanGravity
 * AngleTimeBodyAccJerkMeanGravityMean
 * AngleTimeBodyGyroMeanGravityMean
 * AngleTimeBodyGyroJerkMeanGravityMean
 * AngleXGravityMean
 * AngleYGravityMean
 * AngleZGravityMean


### <a name="second_cols"></a>All Measurement Columns

 * MeanAngleTimeBodyAccJerkMeanGravityMean
 * MeanAngleTimeBodyAccMeanGravity
 * MeanAngleTimeBodyGyroJerkMeanGravityMean
 * MeanAngleTimeBodyGyroMeanGravityMean
 * MeanAngleXGravityMean
 * MeanAngleYGravityMean
 * MeanAngleZGravityMean
 * MeanFrequencyBodyAccBandsEnergy116
 * MeanFrequencyBodyAccBandsEnergy116.1
 * MeanFrequencyBodyAccBandsEnergy116.2
 * MeanFrequencyBodyAccBandsEnergy124
 * MeanFrequencyBodyAccBandsEnergy124.1
 * MeanFrequencyBodyAccBandsEnergy124.2
 * MeanFrequencyBodyAccBandsEnergy1724
 * MeanFrequencyBodyAccBandsEnergy1724.1
 * MeanFrequencyBodyAccBandsEnergy1724.2
 * MeanFrequencyBodyAccBandsEnergy1732
 * MeanFrequencyBodyAccBandsEnergy1732.1
 * MeanFrequencyBodyAccBandsEnergy1732.2
 * MeanFrequencyBodyAccBandsEnergy18
 * MeanFrequencyBodyAccBandsEnergy18.1
 * MeanFrequencyBodyAccBandsEnergy18.2
 * MeanFrequencyBodyAccBandsEnergy2532
 * MeanFrequencyBodyAccBandsEnergy2532.1
 * MeanFrequencyBodyAccBandsEnergy2532.2
 * MeanFrequencyBodyAccBandsEnergy2548
 * MeanFrequencyBodyAccBandsEnergy2548.1
 * MeanFrequencyBodyAccBandsEnergy2548.2
 * MeanFrequencyBodyAccBandsEnergy3340
 * MeanFrequencyBodyAccBandsEnergy3340.1
 * MeanFrequencyBodyAccBandsEnergy3340.2
 * MeanFrequencyBodyAccBandsEnergy3348
 * MeanFrequencyBodyAccBandsEnergy3348.1
 * MeanFrequencyBodyAccBandsEnergy3348.2
 * MeanFrequencyBodyAccBandsEnergy4148
 * MeanFrequencyBodyAccBandsEnergy4148.1
 * MeanFrequencyBodyAccBandsEnergy4148.2
 * MeanFrequencyBodyAccBandsEnergy4956
 * MeanFrequencyBodyAccBandsEnergy4956.1
 * MeanFrequencyBodyAccBandsEnergy4956.2
 * MeanFrequencyBodyAccBandsEnergy4964
 * MeanFrequencyBodyAccBandsEnergy4964.1
 * MeanFrequencyBodyAccBandsEnergy4964.2
 * MeanFrequencyBodyAccBandsEnergy5764
 * MeanFrequencyBodyAccBandsEnergy5764.1
 * MeanFrequencyBodyAccBandsEnergy5764.2
 * MeanFrequencyBodyAccBandsEnergy916
 * MeanFrequencyBodyAccBandsEnergy916.1
 * MeanFrequencyBodyAccBandsEnergy916.2
 * MeanFrequencyBodyAccEnergyX
 * MeanFrequencyBodyAccEnergyY
 * MeanFrequencyBodyAccEnergyZ
 * MeanFrequencyBodyAccEntropyX
 * MeanFrequencyBodyAccEntropyY
 * MeanFrequencyBodyAccEntropyZ
 * MeanFrequencyBodyAccIqrX
 * MeanFrequencyBodyAccIqrY
 * MeanFrequencyBodyAccIqrZ
 * MeanFrequencyBodyAccJerkBandsEnergy116
 * MeanFrequencyBodyAccJerkBandsEnergy116.1
 * MeanFrequencyBodyAccJerkBandsEnergy116.2
 * MeanFrequencyBodyAccJerkBandsEnergy124
 * MeanFrequencyBodyAccJerkBandsEnergy124.1
 * MeanFrequencyBodyAccJerkBandsEnergy124.2
 * MeanFrequencyBodyAccJerkBandsEnergy1724
 * MeanFrequencyBodyAccJerkBandsEnergy1724.1
 * MeanFrequencyBodyAccJerkBandsEnergy1724.2
 * MeanFrequencyBodyAccJerkBandsEnergy1732
 * MeanFrequencyBodyAccJerkBandsEnergy1732.1
 * MeanFrequencyBodyAccJerkBandsEnergy1732.2
 * MeanFrequencyBodyAccJerkBandsEnergy18
 * MeanFrequencyBodyAccJerkBandsEnergy18.1
 * MeanFrequencyBodyAccJerkBandsEnergy18.2
 * MeanFrequencyBodyAccJerkBandsEnergy2532
 * MeanFrequencyBodyAccJerkBandsEnergy2532.1
 * MeanFrequencyBodyAccJerkBandsEnergy2532.2
 * MeanFrequencyBodyAccJerkBandsEnergy2548
 * MeanFrequencyBodyAccJerkBandsEnergy2548.1
 * MeanFrequencyBodyAccJerkBandsEnergy2548.2
 * MeanFrequencyBodyAccJerkBandsEnergy3340
 * MeanFrequencyBodyAccJerkBandsEnergy3340.1
 * MeanFrequencyBodyAccJerkBandsEnergy3340.2
 * MeanFrequencyBodyAccJerkBandsEnergy3348 
 * MeanFrequencyBodyAccJerkBandsEnergy3348.1
 * MeanFrequencyBodyAccJerkBandsEnergy3348.2
 * MeanFrequencyBodyAccJerkBandsEnergy4148
 * MeanFrequencyBodyAccJerkBandsEnergy4148.1
 * MeanFrequencyBodyAccJerkBandsEnergy4148.2
 * MeanFrequencyBodyAccJerkBandsEnergy4956 
 * MeanFrequencyBodyAccJerkBandsEnergy4956.1
 * MeanFrequencyBodyAccJerkBandsEnergy4956.2
 * MeanFrequencyBodyAccJerkBandsEnergy4964
 * MeanFrequencyBodyAccJerkBandsEnergy4964.1
 * MeanFrequencyBodyAccJerkBandsEnergy4964.2
 * MeanFrequencyBodyAccJerkBandsEnergy5764 
 * MeanFrequencyBodyAccJerkBandsEnergy5764.1
 * MeanFrequencyBodyAccJerkBandsEnergy5764.2
 * MeanFrequencyBodyAccJerkBandsEnergy916
 * MeanFrequencyBodyAccJerkBandsEnergy916.1
 * MeanFrequencyBodyAccJerkBandsEnergy916.2 
 * MeanFrequencyBodyAccJerkEnergyX
 * MeanFrequencyBodyAccJerkEnergyY
 * MeanFrequencyBodyAccJerkEnergyZ
 * MeanFrequencyBodyAccJerkEntropyX
 * MeanFrequencyBodyAccJerkEntropyY
 * MeanFrequencyBodyAccJerkEntropyZ
 * MeanFrequencyBodyAccJerkIqrX
 * MeanFrequencyBodyAccJerkIqrY
 * MeanFrequencyBodyAccJerkIqrZ
 * MeanFrequencyBodyAccJerkKurtosisX
 * MeanFrequencyBodyAccJerkKurtosisY
 * MeanFrequencyBodyAccJerkKurtosisZ
 * MeanFrequencyBodyAccJerkMadX
 * MeanFrequencyBodyAccJerkMadY
 * MeanFrequencyBodyAccJerkMadZ
 * MeanFrequencyBodyAccJerkMagEnergy
 * MeanFrequencyBodyAccJerkMagEntropy
 * MeanFrequencyBodyAccJerkMagIqr
 * MeanFrequencyBodyAccJerkMagKurtosis
 * MeanFrequencyBodyAccJerkMagMad
 * MeanFrequencyBodyAccJerkMagMax
 * MeanFrequencyBodyAccJerkMagMaxInds
 * MeanFrequencyBodyAccJerkMagMean
 * MeanFrequencyBodyAccJerkMagMeanFreq
 * MeanFrequencyBodyAccJerkMagMin
 * MeanFrequencyBodyAccJerkMagSkewness
 * MeanFrequencyBodyAccJerkMagSma
 * MeanFrequencyBodyAccJerkMagStd
 * MeanFrequencyBodyAccJerkMaxIndsX
 * MeanFrequencyBodyAccJerkMaxIndsY
 * MeanFrequencyBodyAccJerkMaxIndsZ
 * MeanFrequencyBodyAccJerkMaxX
 * MeanFrequencyBodyAccJerkMaxY
 * MeanFrequencyBodyAccJerkMaxZ
 * MeanFrequencyBodyAccJerkMeanFreqX
 * MeanFrequencyBodyAccJerkMeanFreqY
 * MeanFrequencyBodyAccJerkMeanFreqZ
 * MeanFrequencyBodyAccJerkMeanX
 * MeanFrequencyBodyAccJerkMeanY
 * MeanFrequencyBodyAccJerkMeanZ
 * MeanFrequencyBodyAccJerkMinX
 * MeanFrequencyBodyAccJerkMinY
 * MeanFrequencyBodyAccJerkMinZ
 * MeanFrequencyBodyAccJerkSkewnessX
 * MeanFrequencyBodyAccJerkSkewnessY
 * MeanFrequencyBodyAccJerkSkewnessZ
 * MeanFrequencyBodyAccJerkSma
 * MeanFrequencyBodyAccJerkStdX
 * MeanFrequencyBodyAccJerkStdY
 * MeanFrequencyBodyAccJerkStdZ
 * MeanFrequencyBodyAccKurtosisX
 * MeanFrequencyBodyAccKurtosisY
 * MeanFrequencyBodyAccKurtosisZ
 * MeanFrequencyBodyAccMadX
 * MeanFrequencyBodyAccMadY
 * MeanFrequencyBodyAccMadZ
 * MeanFrequencyBodyAccMagEnergy
 * MeanFrequencyBodyAccMagEntropy
 * MeanFrequencyBodyAccMagIqr
 * MeanFrequencyBodyAccMagKurtosis
 * MeanFrequencyBodyAccMagMad
 * MeanFrequencyBodyAccMagMax
 * MeanFrequencyBodyAccMagMaxInds
 * MeanFrequencyBodyAccMagMean
 * MeanFrequencyBodyAccMagMeanFreq
 * MeanFrequencyBodyAccMagMin
 * MeanFrequencyBodyAccMagSkewness
 * MeanFrequencyBodyAccMagSma
 * MeanFrequencyBodyAccMagStd
 * MeanFrequencyBodyAccMaxIndsX
 * MeanFrequencyBodyAccMaxIndsY
 * MeanFrequencyBodyAccMaxIndsZ
 * MeanFrequencyBodyAccMaxX
 * MeanFrequencyBodyAccMaxY
 * MeanFrequencyBodyAccMaxZ
 * MeanFrequencyBodyAccMeanFreqX
 * MeanFrequencyBodyAccMeanFreqY
 * MeanFrequencyBodyAccMeanFreqZ
 * MeanFrequencyBodyAccMeanX
 * MeanFrequencyBodyAccMeanY
 * MeanFrequencyBodyAccMeanZ
 * MeanFrequencyBodyAccMinX
 * MeanFrequencyBodyAccMinY
 * MeanFrequencyBodyAccMinZ
 * MeanFrequencyBodyAccSkewnessX
 * MeanFrequencyBodyAccSkewnessY
 * MeanFrequencyBodyAccSkewnessZ
 * MeanFrequencyBodyAccSma
 * MeanFrequencyBodyAccStdX
 * MeanFrequencyBodyAccStdY
 * MeanFrequencyBodyAccStdZ
 * MeanFrequencyBodyGyroBandsEnergy116
 * MeanFrequencyBodyGyroBandsEnergy116.1
 * MeanFrequencyBodyGyroBandsEnergy116.2
 * MeanFrequencyBodyGyroBandsEnergy124
 * MeanFrequencyBodyGyroBandsEnergy124.1
 * MeanFrequencyBodyGyroBandsEnergy124.2
 * MeanFrequencyBodyGyroBandsEnergy1724
 * MeanFrequencyBodyGyroBandsEnergy1724.1
 * MeanFrequencyBodyGyroBandsEnergy1724.2
 * MeanFrequencyBodyGyroBandsEnergy1732
 * MeanFrequencyBodyGyroBandsEnergy1732.1
 * MeanFrequencyBodyGyroBandsEnergy1732.2
 * MeanFrequencyBodyGyroBandsEnergy18
 * MeanFrequencyBodyGyroBandsEnergy18.1
 * MeanFrequencyBodyGyroBandsEnergy18.2
 * MeanFrequencyBodyGyroBandsEnergy2532
 * MeanFrequencyBodyGyroBandsEnergy2532.1
 * MeanFrequencyBodyGyroBandsEnergy2532.2
 * MeanFrequencyBodyGyroBandsEnergy2548
 * MeanFrequencyBodyGyroBandsEnergy2548.1
 * MeanFrequencyBodyGyroBandsEnergy2548.2
 * MeanFrequencyBodyGyroBandsEnergy3340
 * MeanFrequencyBodyGyroBandsEnergy3340.1
 * MeanFrequencyBodyGyroBandsEnergy3340.2
 * MeanFrequencyBodyGyroBandsEnergy3348
 * MeanFrequencyBodyGyroBandsEnergy3348.1
 * MeanFrequencyBodyGyroBandsEnergy3348.2
 * MeanFrequencyBodyGyroBandsEnergy4148
 * MeanFrequencyBodyGyroBandsEnergy4148.1
 * MeanFrequencyBodyGyroBandsEnergy4148.2
 * MeanFrequencyBodyGyroBandsEnergy4956
 * MeanFrequencyBodyGyroBandsEnergy4956.1
 * MeanFrequencyBodyGyroBandsEnergy4956.2
 * MeanFrequencyBodyGyroBandsEnergy4964
 * MeanFrequencyBodyGyroBandsEnergy4964.1
 * MeanFrequencyBodyGyroBandsEnergy4964.2
 * MeanFrequencyBodyGyroBandsEnergy5764
 * MeanFrequencyBodyGyroBandsEnergy5764.1
 * MeanFrequencyBodyGyroBandsEnergy5764.2
 * MeanFrequencyBodyGyroBandsEnergy916
 * MeanFrequencyBodyGyroBandsEnergy916.1
 * MeanFrequencyBodyGyroBandsEnergy916.2
 * MeanFrequencyBodyGyroEnergyX
 * MeanFrequencyBodyGyroEnergyY
 * MeanFrequencyBodyGyroEnergyZ
 * MeanFrequencyBodyGyroEntropyX
 * MeanFrequencyBodyGyroEntropyY
 * MeanFrequencyBodyGyroEntropyZ
 * MeanFrequencyBodyGyroIqrX
 * MeanFrequencyBodyGyroIqrY
 * MeanFrequencyBodyGyroIqrZ
 * MeanFrequencyBodyGyroJerkMagEnergy
 * MeanFrequencyBodyGyroJerkMagEntropy
 * MeanFrequencyBodyGyroJerkMagIqr
 * MeanFrequencyBodyGyroJerkMagKurtosis
 * MeanFrequencyBodyGyroJerkMagMad
 * MeanFrequencyBodyGyroJerkMagMax
 * MeanFrequencyBodyGyroJerkMagMaxInds
 * MeanFrequencyBodyGyroJerkMagMean
 * MeanFrequencyBodyGyroJerkMagMeanFreq
 * MeanFrequencyBodyGyroJerkMagMin
 * MeanFrequencyBodyGyroJerkMagSkewness
 * MeanFrequencyBodyGyroJerkMagSma
 * MeanFrequencyBodyGyroJerkMagStd
 * MeanFrequencyBodyGyroKurtosisX
 * MeanFrequencyBodyGyroKurtosisY
 * MeanFrequencyBodyGyroKurtosisZ
 * MeanFrequencyBodyGyroMadX
 * MeanFrequencyBodyGyroMadY
 * MeanFrequencyBodyGyroMadZ
 * MeanFrequencyBodyGyroMagEnergy
 * MeanFrequencyBodyGyroMagEntropy
 * MeanFrequencyBodyGyroMagIqr
 * MeanFrequencyBodyGyroMagKurtosis
 * MeanFrequencyBodyGyroMagMad
 * MeanFrequencyBodyGyroMagMax
 * MeanFrequencyBodyGyroMagMaxInds
 * MeanFrequencyBodyGyroMagMean
 * MeanFrequencyBodyGyroMagMeanFreq
 * MeanFrequencyBodyGyroMagMin
 * MeanFrequencyBodyGyroMagSkewness
 * MeanFrequencyBodyGyroMagSma
 * MeanFrequencyBodyGyroMagStd
 * MeanFrequencyBodyGyroMaxIndsX
 * MeanFrequencyBodyGyroMaxIndsY
 * MeanFrequencyBodyGyroMaxIndsZ
 * MeanFrequencyBodyGyroMaxX
 * MeanFrequencyBodyGyroMaxY
 * MeanFrequencyBodyGyroMaxZ
 * MeanFrequencyBodyGyroMeanFreqX
 * MeanFrequencyBodyGyroMeanFreqY
 * MeanFrequencyBodyGyroMeanFreqZ
 * MeanFrequencyBodyGyroMeanX
 * MeanFrequencyBodyGyroMeanY
 * MeanFrequencyBodyGyroMeanZ
 * MeanFrequencyBodyGyroMinX
 * MeanFrequencyBodyGyroMinY
 * MeanFrequencyBodyGyroMinZ
 * MeanFrequencyBodyGyroSkewnessX
 * MeanFrequencyBodyGyroSkewnessY
 * MeanFrequencyBodyGyroSkewnessZ
 * MeanFrequencyBodyGyroSma
 * MeanFrequencyBodyGyroStdX
 * MeanFrequencyBodyGyroStdY
 * MeanFrequencyBodyGyroStdZ
 * MeanTimeBodyAccArCoeffX1
 * MeanTimeBodyAccArCoeffX2
 * MeanTimeBodyAccArCoeffX3
 * MeanTimeBodyAccArCoeffX4
 * MeanTimeBodyAccArCoeffY1
 * MeanTimeBodyAccArCoeffY2
 * MeanTimeBodyAccArCoeffY3
 * MeanTimeBodyAccArCoeffY4
 * MeanTimeBodyAccArCoeffZ1
 * MeanTimeBodyAccArCoeffZ2
 * MeanTimeBodyAccArCoeffZ3
 * MeanTimeBodyAccArCoeffZ4
 * MeanTimeBodyAccCorrelationXY
 * MeanTimeBodyAccCorrelationXZ
 * MeanTimeBodyAccCorrelationYZ
 * MeanTimeBodyAccEnergyX
 * MeanTimeBodyAccEnergyY
 * MeanTimeBodyAccEnergyZ
 * MeanTimeBodyAccEntropyX
 * MeanTimeBodyAccEntropyY
 * MeanTimeBodyAccEntropyZ
 * MeanTimeBodyAccIqrX
 * MeanTimeBodyAccIqrY
 * MeanTimeBodyAccIqrZ
 * MeanTimeBodyAccJerkArCoeffX1
 * MeanTimeBodyAccJerkArCoeffX2
 * MeanTimeBodyAccJerkArCoeffX3
 * MeanTimeBodyAccJerkArCoeffX4
 * MeanTimeBodyAccJerkArCoeffY1
 * MeanTimeBodyAccJerkArCoeffY2
 * MeanTimeBodyAccJerkArCoeffY3
 * MeanTimeBodyAccJerkArCoeffY4
 * MeanTimeBodyAccJerkArCoeffZ1
 * MeanTimeBodyAccJerkArCoeffZ2
 * MeanTimeBodyAccJerkArCoeffZ3
 * MeanTimeBodyAccJerkArCoeffZ4
 * MeanTimeBodyAccJerkCorrelationXY
 * MeanTimeBodyAccJerkCorrelationXZ
 * MeanTimeBodyAccJerkCorrelationYZ
 * MeanTimeBodyAccJerkEnergyX
 * MeanTimeBodyAccJerkEnergyY
 * MeanTimeBodyAccJerkEnergyZ
 * MeanTimeBodyAccJerkEntropyX
 * MeanTimeBodyAccJerkEntropyY
 * MeanTimeBodyAccJerkEntropyZ
 * MeanTimeBodyAccJerkIqrX
 * MeanTimeBodyAccJerkIqrY
 * MeanTimeBodyAccJerkIqrZ
 * MeanTimeBodyAccJerkMadX
 * MeanTimeBodyAccJerkMadY
 * MeanTimeBodyAccJerkMadZ
 * MeanTimeBodyAccJerkMagArCoeff1
 * MeanTimeBodyAccJerkMagArCoeff2
 * MeanTimeBodyAccJerkMagArCoeff3
 * MeanTimeBodyAccJerkMagArCoeff4
 * MeanTimeBodyAccJerkMagEnergy
 * MeanTimeBodyAccJerkMagEntropy
 * MeanTimeBodyAccJerkMagIqr
 * MeanTimeBodyAccJerkMagMad
 * MeanTimeBodyAccJerkMagMax
 * MeanTimeBodyAccJerkMagMean
 * MeanTimeBodyAccJerkMagMin
 * MeanTimeBodyAccJerkMagSma
 * MeanTimeBodyAccJerkMagStd
 * MeanTimeBodyAccJerkMaxX
 * MeanTimeBodyAccJerkMaxY
 * MeanTimeBodyAccJerkMaxZ
 * MeanTimeBodyAccJerkMeanX
 * MeanTimeBodyAccJerkMeanY
 * MeanTimeBodyAccJerkMeanZ
 * MeanTimeBodyAccJerkMinX
 * MeanTimeBodyAccJerkMinY
 * MeanTimeBodyAccJerkMinZ
 * MeanTimeBodyAccJerkSma
 * MeanTimeBodyAccJerkStdX
 * MeanTimeBodyAccJerkStdY
 * MeanTimeBodyAccJerkStdZ
 * MeanTimeBodyAccMadX
 * MeanTimeBodyAccMadY
 * MeanTimeBodyAccMadZ
 * MeanTimeBodyAccMagArCoeff1
 * MeanTimeBodyAccMagArCoeff2
 * MeanTimeBodyAccMagArCoeff3
 * MeanTimeBodyAccMagArCoeff4
 * MeanTimeBodyAccMagEnergy
 * MeanTimeBodyAccMagEntropy
 * MeanTimeBodyAccMagIqr
 * MeanTimeBodyAccMagMad
 * MeanTimeBodyAccMagMax
 * MeanTimeBodyAccMagMean
 * MeanTimeBodyAccMagMin
 * MeanTimeBodyAccMagSma
 * MeanTimeBodyAccMagStd
 * MeanTimeBodyAccMaxX
 * MeanTimeBodyAccMaxY
 * MeanTimeBodyAccMaxZ
 * MeanTimeBodyAccMeanX
 * MeanTimeBodyAccMeanY
 * MeanTimeBodyAccMeanZ
 * MeanTimeBodyAccMinX
 * MeanTimeBodyAccMinY
 * MeanTimeBodyAccMinZ
 * MeanTimeBodyAccSma
 * MeanTimeBodyAccStdX
 * MeanTimeBodyAccStdY
 * MeanTimeBodyAccStdZ
 * MeanTimeBodyGyroArCoeffX1
 * MeanTimeBodyGyroArCoeffX2
 * MeanTimeBodyGyroArCoeffX3
 * MeanTimeBodyGyroArCoeffX4
 * MeanTimeBodyGyroArCoeffY1
 * MeanTimeBodyGyroArCoeffY2
 * MeanTimeBodyGyroArCoeffY3
 * MeanTimeBodyGyroArCoeffY4
 * MeanTimeBodyGyroArCoeffZ1
 * MeanTimeBodyGyroArCoeffZ2
 * MeanTimeBodyGyroArCoeffZ3
 * MeanTimeBodyGyroArCoeffZ4
 * MeanTimeBodyGyroCorrelationXY
 * MeanTimeBodyGyroCorrelationXZ
 * MeanTimeBodyGyroCorrelationYZ
 * MeanTimeBodyGyroEnergyX
 * MeanTimeBodyGyroEnergyY
 * MeanTimeBodyGyroEnergyZ
 * MeanTimeBodyGyroEntropyX
 * MeanTimeBodyGyroEntropyY
 * MeanTimeBodyGyroEntropyZ
 * MeanTimeBodyGyroIqrX
 * MeanTimeBodyGyroIqrY
 * MeanTimeBodyGyroIqrZ
 * MeanTimeBodyGyroJerkArCoeffX1
 * MeanTimeBodyGyroJerkArCoeffX2
 * MeanTimeBodyGyroJerkArCoeffX3
 * MeanTimeBodyGyroJerkArCoeffX4
 * MeanTimeBodyGyroJerkArCoeffY1
 * MeanTimeBodyGyroJerkArCoeffY2
 * MeanTimeBodyGyroJerkArCoeffY3
 * MeanTimeBodyGyroJerkArCoeffY4
 * MeanTimeBodyGyroJerkArCoeffZ1
 * MeanTimeBodyGyroJerkArCoeffZ2
 * MeanTimeBodyGyroJerkArCoeffZ3
 * MeanTimeBodyGyroJerkArCoeffZ4
 * MeanTimeBodyGyroJerkCorrelationXY
 * MeanTimeBodyGyroJerkCorrelationXZ
 * MeanTimeBodyGyroJerkCorrelationYZ
 * MeanTimeBodyGyroJerkEnergyX
 * MeanTimeBodyGyroJerkEnergyY
 * MeanTimeBodyGyroJerkEnergyZ
 * MeanTimeBodyGyroJerkEntropyX
 * MeanTimeBodyGyroJerkEntropyY
 * MeanTimeBodyGyroJerkEntropyZ
 * MeanTimeBodyGyroJerkIqrX
 * MeanTimeBodyGyroJerkIqrY
 * MeanTimeBodyGyroJerkIqrZ
 * MeanTimeBodyGyroJerkMadX
 * MeanTimeBodyGyroJerkMadY
 * MeanTimeBodyGyroJerkMadZ
 * MeanTimeBodyGyroJerkMagArCoeff1
 * MeanTimeBodyGyroJerkMagArCoeff2
 * MeanTimeBodyGyroJerkMagArCoeff3
 * MeanTimeBodyGyroJerkMagArCoeff4
 * MeanTimeBodyGyroJerkMagEnergy
 * MeanTimeBodyGyroJerkMagEntropy
 * MeanTimeBodyGyroJerkMagIqr
 * MeanTimeBodyGyroJerkMagMad
 * MeanTimeBodyGyroJerkMagMax
 * MeanTimeBodyGyroJerkMagMean
 * MeanTimeBodyGyroJerkMagMin
 * MeanTimeBodyGyroJerkMagSma
 * MeanTimeBodyGyroJerkMagStd
 * MeanTimeBodyGyroJerkMaxX
 * MeanTimeBodyGyroJerkMaxY
 * MeanTimeBodyGyroJerkMaxZ
 * MeanTimeBodyGyroJerkMeanX
 * MeanTimeBodyGyroJerkMeanY
 * MeanTimeBodyGyroJerkMeanZ
 * MeanTimeBodyGyroJerkMinX
 * MeanTimeBodyGyroJerkMinY
 * MeanTimeBodyGyroJerkMinZ
 * MeanTimeBodyGyroJerkSma
 * MeanTimeBodyGyroJerkStdX
 * MeanTimeBodyGyroJerkStdY
 * MeanTimeBodyGyroJerkStdZ
 * MeanTimeBodyGyroMadX
 * MeanTimeBodyGyroMadY
 * MeanTimeBodyGyroMadZ
 * MeanTimeBodyGyroMagArCoeff1
 * MeanTimeBodyGyroMagArCoeff2
 * MeanTimeBodyGyroMagArCoeff3
 * MeanTimeBodyGyroMagArCoeff4
 * MeanTimeBodyGyroMagEnergy
 * MeanTimeBodyGyroMagEntropy
 * MeanTimeBodyGyroMagIqr
 * MeanTimeBodyGyroMagMad
 * MeanTimeBodyGyroMagMax
 * MeanTimeBodyGyroMagMean
 * MeanTimeBodyGyroMagMin
 * MeanTimeBodyGyroMagSma
 * MeanTimeBodyGyroMagStd
 * MeanTimeBodyGyroMaxX
 * MeanTimeBodyGyroMaxY
 * MeanTimeBodyGyroMaxZ
 * MeanTimeBodyGyroMeanX
 * MeanTimeBodyGyroMeanY
 * MeanTimeBodyGyroMeanZ
 * MeanTimeBodyGyroMinX
 * MeanTimeBodyGyroMinY
 * MeanTimeBodyGyroMinZ
 * MeanTimeBodyGyroSma
 * MeanTimeBodyGyroStdX
 * MeanTimeBodyGyroStdY
 * MeanTimeBodyGyroStdZ
 * MeanTimeGravityAccArCoeffX1
 * MeanTimeGravityAccArCoeffX2
 * MeanTimeGravityAccArCoeffX3
 * MeanTimeGravityAccArCoeffX4
 * MeanTimeGravityAccArCoeffY1
 * MeanTimeGravityAccArCoeffY2
 * MeanTimeGravityAccArCoeffY3
 * MeanTimeGravityAccArCoeffY4
 * MeanTimeGravityAccArCoeffZ1
 * MeanTimeGravityAccArCoeffZ2
 * MeanTimeGravityAccArCoeffZ3
 * MeanTimeGravityAccArCoeffZ4
 * MeanTimeGravityAccCorrelationXY
 * MeanTimeGravityAccCorrelationXZ
 * MeanTimeGravityAccCorrelationYZ
 * MeanTimeGravityAccEnergyX
 * MeanTimeGravityAccEnergyY
 * MeanTimeGravityAccEnergyZ
 * MeanTimeGravityAccEntropyX
 * MeanTimeGravityAccEntropyY
 * MeanTimeGravityAccEntropyZ
 * MeanTimeGravityAccIqrX
 * MeanTimeGravityAccIqrY
 * MeanTimeGravityAccIqrZ
 * MeanTimeGravityAccMadX
 * MeanTimeGravityAccMadY
 * MeanTimeGravityAccMadZ
 * MeanTimeGravityAccMagArCoeff1
 * MeanTimeGravityAccMagArCoeff2
 * MeanTimeGravityAccMagArCoeff3
 * MeanTimeGravityAccMagArCoeff4
 * MeanTimeGravityAccMagEnergy
 * MeanTimeGravityAccMagEntropy
 * MeanTimeGravityAccMagIqr
 * MeanTimeGravityAccMagMad
 * MeanTimeGravityAccMagMax
 * MeanTimeGravityAccMagMean
 * MeanTimeGravityAccMagMin
 * MeanTimeGravityAccMagSma
 * MeanTimeGravityAccMagStd
 * MeanTimeGravityAccMaxX
 * MeanTimeGravityAccMaxY
 * MeanTimeGravityAccMaxZ
 * MeanTimeGravityAccMeanX
 * MeanTimeGravityAccMeanY
 * MeanTimeGravityAccMeanZ
 * MeanTimeGravityAccMinX
 * MeanTimeGravityAccMinY
 * MeanTimeGravityAccMinZ
 * MeanTimeGravityAccSma
 * MeanTimeGravityAccStdX
 * MeanTimeGravityAccStdY
 * MeanTimeGravityAccStdZ
