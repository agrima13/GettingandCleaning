url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
url2<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,destfile="data1.csv")
download.file(url2,destfile="data2.csv")
dataone<-read.csv("data1.csv",header=TRUE)
datatwo<-read.csv("data2.csv",header=TRUE)

mergedata<-merge(dataone,datatwo,by.x="X",by.y="CountryCode")
dim(mergedata)

library(plyr)
mergeGDP<-mergenew[,c(2,12)]
mergeGDP$Gross.domestic.product.2012<-as.numeric(as.character(mergeGDP$Gross.domestic.product.2012))
mergesplit<-split(mergeGDP,mergeGDP$Income.Group)
names(mergesplit)<-c("N","HN","HO","L","LM","UM")
mean(mergesplit$HO$Gross.domestic.product.2012)
mean(mergesplit$HN$Gross.domestic.product.2012)