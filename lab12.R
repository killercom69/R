#question-1
data1 <- data.frame("S.No"=c(1:25),"Name"=c("Abhinav Dubey","Akash Rana","Aman Srivastava","Hemant Kumar","Girish Kemba","Prashant Singh","Riswin","Keshav Tulsyan","Kishan PS","Dipannita Das","Riya Saha","Sahana","Ujala Jha","Debojyoti Bhattacharya","Satadru Ganguly","Tarang Baraua","Ranojoy Dasgupta","Rajdeep Maity","Anwesha Saha","Dhinesh J","Suprio","Swarendru Ganguly","Altiar Ibn La Ahad","Ezio Auditore","Rachana Jain"),"Sub1Marks"=c(sample(0:100,5,replace=F)),"Sub2Marks"=c(sample(0:100,5,replace=F)),"Sub3Marks"=c(sample(0:100,5,replace=F)),"Sub4Marks"=c(sample(0:100,5,replace=F)))
data1
write.csv(data1,file="Students_lab.csv",row.names = T)
getwd()
studata <- read.csv(file.choose(),header = T)
studata
#question-2
summary(studata)
str(studata)
names(studata)
rownames(studata)
colnames(studata)
dim(studata)
#question-3
attach(studata)
log(S.No)
log(Sub1Marks)
log(Sub2Marks)
log(Sub3Marks)
log(Sub4Marks)
summary(studata)
#question-4
quantile(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks),type=3)
quantile(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks),type=4)
quantile(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks),type=9)
#question-5
cumsum(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks))
cummax(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks))
cumprod(c(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks))
#question-6
x <- cbind(Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks)
rowMeans(x, na.rm = T)
group<-c(sample(0:25,1))
rowSums(x,na.rm = T)
colMeans(x,na.rm = T)
colSums(x, na.rm = T)
apply(x,2,sum)
#question-7
mean(studata[,4])
apply(studata,2,median)
#question-8
length(studata)
mean(studata$Sub1Marks)
lapply(studata,mean,na.rm=T)
sapply(studata,mean,na.rm=T)
