household<-read.csv(file=file.choose(),header=T,sep=",")
library(sqldf)
#sqldf("select distinct AGEP from acs")
#newdat<-sqldf("select * from acs where ACR=3 and Val >0")
household$agricultureLogical<-ifelse(household$ACR == 3 & household$VAL > 1,TRUE,FALSE)
which(household$agricultureLogical)
  