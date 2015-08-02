con<-"http://biostat.jhsph.edu/~jleek/contact.html"
ab<-readLines(con)
print(nchar(ab[10]))
print(nchar(ab[20]))
print(nchar(ab[30]))
print(nchar(ab[100]))