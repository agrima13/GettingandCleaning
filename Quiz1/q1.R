fileurl="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv "
download.file(fileurl,destfile="./dat/us.csv")
data1<-read.csv("./dat/us.csv",header=TRUE)