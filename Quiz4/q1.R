if(!file.exists("./quiz4"))
{dir.create("quiz4")}

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl,destfile="./quiz4/usdata.csv")

usdata<-read.csv("./quiz4/usdata.csv")
namewithw<-strsplit(names(usdata),"wgtp")