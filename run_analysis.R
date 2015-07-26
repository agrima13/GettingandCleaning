#Merges the training and the test sets to create one data set.
trainx<-read.table(file.choose())
testx<-read.table(file.choose())
trainsubject<-read.table(file.choose())
testsubject<-read.table(file.choose())
trainy<-read.table(file.choose())
testy<-read.table(file.choose())

jointrainx<-rbind(trainx,testx)
jointesty<-rbind(trainy,testy)

joinsubject<-rbind(trainsubject,testsubject)

train<-jointrain
test<-jointest

##Extracts only the measurements on the mean and standard deviation for each measurement. 

featureset<-read.table(file=file.choose())
dim(featureset)
stdmeanindices<-grep("mean\\(\\)|std\\(\\)",featureset[,2])
train<-train[,stdmeanindices]

##Uses descriptive activity names to name the activities in the data set
activity <- read.table(file=file.choose())
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
activityLabel <- activity[test[, 1], 2]
test[, 1] <- activityLabel
names(test) <- "Activity"


##Appropriately labels the data set with descriptive variable names. 
names(joinsubject)<-"subject"
dataset<-cbind(joinsubject,train,test)
dim(dataset)

## From the data set in step 4, creates a second, independent tidy data
##set with the average of each variable for each activity and each subject.

limitedColMeans <- function(data)
{ 
  colMeans(data[,-c(1,68)]) 
}
tidyMeans <- ddply(dataset, .(subject, Activity), limitedColMeans)
names(tidyMeans)[-c(1,68)] <- paste0("Mean", names(tidyMeans)[-c(1,68)])

# Write file
write.table(tidyMeans, "tidy.txt", row.names = FALSE)
