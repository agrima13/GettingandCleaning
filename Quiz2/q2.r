
acs<-read.csv(file=file.choose(),header=T,sep=",")
library(sqldf)
sqldf("select pwgtp1 from acs where AGEP < 50")
