Age[1:5]
temp <- Age>15
temp2 <- as.numeric(Age>15)
temp2[1:5]
temp[1:5]
as.numeric(temp[1:5])
LungCapData[1:5,]
FemSmoke <- Gender=="female" & Smoke=="yes"
FemSmoke[1:5]
MoreData <- cbind(LungCapData,FemSmoke)
MoreData[1:5,]
rm(list = ls())
