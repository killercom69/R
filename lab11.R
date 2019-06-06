#question-1
a <- readline()
a
b <- cat("ENter anything u please",readline())

c <- scan()
#question-2
d <- "konichiwa"
nchar(d)
grep("Pole",c("Equator","North Pole","South Pole"))
paste("North","Pole",sep=" ")
i <- 8
s <- sprintf("the square of %d is %d",i,i^2)
s
substring("Equator",3,5)
strsplit("6-16-2011",split = "-")
gregexpr("iss","Mississippi")
regexpr("iss","Mississippi")
#question-3
data1 <- read.csv(file.choose(),header = T)
data1
write.table(data1,file="DATA1.txt",row.names = T)
#question-5
