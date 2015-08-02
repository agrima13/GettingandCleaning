if(!file.exists("./quiz4"))
{dir.create("quiz4")}

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl,destfile="./quiz4/rank.csv")

rank<-read.csv("./quiz4/rank.csv")

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileurl,destfile="./quiz4/edu.csv")

edu<-read.csv("./quiz4/edu.csv")

newData <- rank[6:194, c(1, 2, 4, 5)]
colnames(newData) <- c("CountryCode", "Ranking", "Economy", "GDP")
rownames(newData) <- NULL # renumbering
names(edu)
mergedData <- merge(newData, edu, by.x="CountryCode", by.y="CountryCode", all=TRUE)
head(mergedData)
names(mergedData) <- tolower(names(mergedData))
a <- as.character(mergedData[,13])
length(grep("Fiscal year end: June", a))

