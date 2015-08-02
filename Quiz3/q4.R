url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
url2<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,destfile="data1.csv")
download.file(url2,destfile="data2.csv")
dataone<-read.csv("data1.csv",header=TRUE)
datatwo<-read.csv("data2.csv",header=TRUE)
dataone<-dataone[5:194,]

mergedata<-merge(dataone,datatwo,by.x="X",by.y="CountryCode")
dim(mergedata)

library(plyr)
#mergedata$Gross.domestic.product.2012<-as.numeric((mergedata$Gross.domestic.product.2012))
#mergenew<-arrange(mergedata,(Gross.domestic.product.2012))

mergedata$Gross.domestic.product.2012<-as.numeric(as.character((mergedata$Gross.domestic.product.2012)))
mergenew<-arrange(mergedata,desc(Gross.domestic.product.2012))


