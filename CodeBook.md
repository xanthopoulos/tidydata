Code Book
=========

One of the most exciting areas in all of data science right now is wearable computing. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The process of creating the clean data sets:
-----------------------------------------------

1. Download the zip file from the web (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

2. Load the feature data set (features.txt) used for the columns 

3. Read the train data from the zip file and create the train data set
   * subject_train.txt - contains the ids
   * y_train.txt - contains the activity labels
   * X_train.txt - contains the data with the feature data set as columns
   
4. Read the test data from the zip file and create the test data set
   * subject_test.txt - contains the ids
   * y_test.txt - contains the activity labels
   * X_test.txt - contains the data with the feature data set as columns

5. Merge the training and test sets to create one data set

6. Sort the data according to the id

7. Load the activity labels (activity_labels.txt)

8. Use the activity labels to change the data activity row

9. Extract the mean and std from data1

10. Save data1 as data1.csv

11. load the plyr package

12. use ddply from the plyr package to calculate the mean of each variable for each activity and each id

13. add _mean to the column names

14. save the second tidy data set data2 as data2.csv

data1.csv  (10299 rows and 81 columns)
-----------------------------------------

**Columns**

1.  id        
2.  activity	
3.  tBodyAcc.mean...X	
4.  tBodyAcc.mean...Y	
5.  tBodyAcc.mean...Z	
6.  tGravityAcc.mean...X	
7.  tGravityAcc.mean...Y	
8.  tGravityAcc.mean...Z	
9.  tBodyAccJerk.mean...X	
10. tBodyAccJerk.mean...Y	
11. tBodyAccJerk.mean...Z	
12. tBodyGyro.mean...X	
13. tBodyGyro.mean...Y	
14. tBodyGyro.mean...Z	
15. tBodyGyroJerk.mean...X                                                           
16. tBodyGyroJerk.mean...Y	
17. tBodyGyroJerk.mean...Z	
18. tBodyAccMag.mean..                                                                                                                                                                                                                                                                                                                                               
19. tGravityAccMag.mean..	                   
20. tBodyAccJerkMag.mean..	
21. tBodyGyroMag.mean..                 
22. tBodyGyroJerkMag.mean..	                   
23. fBodyAcc.mean...X	
24. fBodyAcc.mean...Y	
25. fBodyAcc.mean...Z	
26. fBodyAcc.meanFreq...X	
27. fBodyAcc.meanFreq...Y	
28. fBodyAcc.meanFreq...Z	
29. fBodyAccJerk.mean...X	
30. fBodyAccJerk.mean...Y	
31. fBodyAccJerk.mean...Z	
32. fBodyAccJerk.meanFreq...X	
33. fBodyAccJerk.meanFreq...Y	
34. fBodyAccJerk.meanFreq...Z	
35. fBodyGyro.mean...X	
36. fBodyGyro.mean...Y	
37. fBodyGyro.mean...Z	
38. fBodyGyro.meanFreq...X	
39. fBodyGyro.meanFreq...Y	
40. fBodyGyro.meanFreq...Z	
41. fBodyAccMag.mean..	
42. fBodyAccMag.meanFreq..	
43. fBodyBodyAccJerkMag.mean..	
44. fBodyBodyAccJerkMag.meanFreq..	
45. fBodyBodyGyroMag.mean..	    
46. fBodyBodyGyroMag.meanFreq..	    
47. fBodyBodyGyroJerkMag.mean..	   
48. fBodyBodyGyroJerkMag.meanFreq..	   
49. tBodyAcc.std...X	
50. tBodyAcc.std...Y	
51. tBodyAcc.std...Z	
52. tGravityAcc.std...X	  
53. tGravityAcc.std...Y	  
54. tGravityAcc.std...Z	  
55. tBodyAccJerk.std...X	
56. tBodyAccJerk.std...Y	
57. tBodyAccJerk.std...Z	
58. tBodyGyro.std...X	
59. tBodyGyro.std...Y	
60. tBodyGyro.std...Z	
61. tBodyGyroJerk.std...X	
62. tBodyGyroJerk.std...Y	
63. tBodyGyroJerk.std...Z	
64. tBodyAccMag.std..	
65. tGravityAccMag.std..	
66. tBodyAccJerkMag.std..	
67. tBodyGyroMag.std..	
68. tBodyGyroJerkMag.std..	
69. fBodyAcc.std...X	
70. fBodyAcc.std...Y	
71. fBodyAcc.std...Z	
72. fBodyAccJerk.std...X	
73. fBodyAccJerk.std...Y	
74. fBodyAccJerk.std...Z	
75. fBodyGyro.std...X	
76. fBodyGyro.std...Y	
77. fBodyGyro.std...Z	
78. fBodyAccMag.std..	
79. fBodyBodyAccJerkMag.std..	
80. fBodyBodyGyroMag.std..	
81. fBodyBodyGyroJerkMag.std..


data2.csv  (180 rows and 81 columns)
-----------------------------------------

**Columns**



1.       id
2.	activity
3.	tBodyAcc.mean...X_mean
4.	tBodyAcc.mean...Y_mean
5.	tBodyAcc.mean...Z_mean
6.	tGravityAcc.mean...X_mean
7.	tGravityAcc.mean...Y_mean
8.	tGravityAcc.mean...Z_mean
9.	tBodyAccJerk.mean...X_mean
10.	tBodyAccJerk.mean...Y_mean
11.	tBodyAccJerk.mean...Z_mean
12.	tBodyGyro.mean...X_mean
13.	tBodyGyro.mean...Y_mean
14.	tBodyGyro.mean...Z_mean
15.	tBodyGyroJerk.mean...X_mean
16.	tBodyGyroJerk.mean...Y_mean
17.	tBodyGyroJerk.mean...Z_mean
18.	tBodyAccMag.mean.._mean
19.	tGravityAccMag.mean.._mean
20.	tBodyAccJerkMag.mean.._mean
21.	tBodyGyroMag.mean.._mean
22.	tBodyGyroJerkMag.mean.._mean
23.	fBodyAcc.mean...X_mean
24.	fBodyAcc.mean...Y_mean
25.	fBodyAcc.mean...Z_mean
26.	fBodyAcc.meanFreq...X_mean
27.	fBodyAcc.meanFreq...Y_mean
28.	fBodyAcc.meanFreq...Z_mean
29.	fBodyAccJerk.mean...X_mean
30.	fBodyAccJerk.mean...Y_mean
31.	fBodyAccJerk.mean...Z_mean
32.	fBodyAccJerk.meanFreq...X_mean
33.	fBodyAccJerk.meanFreq...Y_mean
34.	fBodyAccJerk.meanFreq...Z_mean
35.	fBodyGyro.mean...X_mean
36.	fBodyGyro.mean...Y_mean
37.	fBodyGyro.mean...Z_mean
38.	fBodyGyro.meanFreq...X_mean
39.	fBodyGyro.meanFreq...Y_mean
40.	fBodyGyro.meanFreq...Z_mean
41.	fBodyAccMag.mean.._mean
42.	fBodyAccMag.meanFreq.._mean
43.	fBodyBodyAccJerkMag.mean.._mean
44.	fBodyBodyAccJerkMag.meanFreq.._mean
45.	fBodyBodyGyroMag.mean.._mean
46.	fBodyBodyGyroMag.meanFreq.._mean
47.	fBodyBodyGyroJerkMag.mean.._mean
48.	fBodyBodyGyroJerkMag.meanFreq.._mean
49.	tBodyAcc.std...X_mean
50.	tBodyAcc.std...Y_mean
51.	tBodyAcc.std...Z_mean
52.	tGravityAcc.std...X_mean
53.	tGravityAcc.std...Y_mean
54.	tGravityAcc.std...Z_mean
55.	tBodyAccJerk.std...X_mean
56.	tBodyAccJerk.std...Y_mean
57.	tBodyAccJerk.std...Z_mean
58.	tBodyGyro.std...X_mean
59.	tBodyGyro.std...Y_mean
60.	tBodyGyro.std...Z_mean
61.	tBodyGyroJerk.std...X_mean
62.	tBodyGyroJerk.std...Y_mean
63.	tBodyGyroJerk.std...Z_mean
64.	tBodyAccMag.std.._mean
65.	tGravityAccMag.std.._mean
66.	tBodyAccJerkMag.std.._mean
67.	tBodyGyroMag.std.._mean
68.	tBodyGyroJerkMag.std.._mean
69.	fBodyAcc.std...X_mean
70.	fBodyAcc.std...Y_mean
71.	fBodyAcc.std...Z_mean
72.	fBodyAccJerk.std...X_mean
73.	fBodyAccJerk.std...Y_mean
74.	fBodyAccJerk.std...Z_mean
75.	fBodyGyro.std...X_mean
76.	fBodyGyro.std...Y_mean
77.	fBodyGyro.std...Z_mean
78.	fBodyAccMag.std.._mean
79.	fBodyBodyAccJerkMag.std.._mean
80.	fBodyBodyGyroMag.std.._mean
81.	fBodyBodyGyroJerkMag.std.._mean






















Explanation of the column names
-------------------------------

The column names came from the features. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

