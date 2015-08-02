install.packages("jpeg")
library(jpeg)
imgurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
z <- tempfile()
download.file(imgurl,z,mode="wb")
pic <- readJPEG(z,TRUE)
quantile(pic, probs = c(0.3,0.8))