LungCapData <- read.table(file.choose(), header =T, sep=",")
dim(LungCapData)
attach(LungCapData)
length(Age)
Age[11:14]
LungCapData[11:14,]
mean(Age[Gender=="female"])
levels(Gender)
mean(Age[Gender=="male"])
FemData <- LungCapData[Gender=="female",]
MaleData <- LungCapData[Gender=="male",]
dim(FemData)
dim(MaleData)
summary(Gender)
FemData[1:4,]
MaleOver15 <- LungCapData[Gender=="male"&Age>15, ]
dim(MaleOver15)
MaleOver15[1:4,]
