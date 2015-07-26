Data Sets
_________

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

_________________________________________________________________________________

Steps followed for generating tidy data

1) Read X_train.txt and store in trainx 
2) Read y_train.txt and store in trainy
3) Read subject_train.txt and store in trainsubject
4) Read X_test.txt and store in testx.
5) Read y_test.txt and store in testy.
6) Read subject_test.txt and store in testsubject.

Part 1
______
1)Join trainx and testx to form jointrainx.
2)Join trainy and testy to form jointest.
3)Make train as jointrainx.
4)Make test as jointest.

Part 2
_____

1) Read features.txt file and store the data in featureset. 
2) Extract the indices of the mean and standard deviation from the feature set into stdmeanindices.

Part 3
_____

1) Read activity_labels.txt and store the data in activity.
2) Replace the underscore between letters in activity.
3) Transform the values of test according to the activity data frame.
4) Combine the joinsubject, test and train into a variable dataset.

Part 4
_____

1) Make a function limitedColMeans which will calculate the mean of all the columns.
2) The dataframe tidymeans will store all the columnmeans.
3) Rename the dataframe tidymeans.