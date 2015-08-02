if(!file.exists("./quiz4"))
{dir.create("quiz4")}

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl,destfile="./quiz4/rank.csv")

rank<-read.csv("./quiz4/rank.csv")


countrynames<-rank[5:194, 4]
grep("^United",countrynames)