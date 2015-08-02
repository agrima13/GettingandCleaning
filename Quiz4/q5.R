library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 

newyear<-grep("2012",sampleTimes)
print(length(newyear))

sampleday<-format(sampleTimes,"%A %b %d")
newday<-grep("Monday",sampleday)
print(length(intersect(newday,newyear)))





