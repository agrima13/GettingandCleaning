if(!file.exists("./quiz4"))
{dir.create("quiz4")}

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl,destfile="./quiz4/rank.csv")

rank<-read.csv("./quiz4/rank.csv")
withoutcomma<-as.numeric(gsub(",","",rank[5:194, 5]))
print(mean(withoutcomma,na.rm=TRUE))



