
acs<-read.csv(file=file.choose(),header=T,sep=",")
library(sqldf)
sqldf("select distinct AGEP from acs")
#newdat<-sqldf("select * from acs where ACR=3 and Val >0")