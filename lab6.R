#1)
gender <- c("M" , "M" , "F" , "F" , "F" )
whereF<- (gender == "F" )
gender[whereF] <- "Female"
gender
#all F's in gender are replaced by Female
#2)
char <- c("2" , "1" , "0" )
num<- 0:2
charnum<- data.frame(char, num); 

sample(1:100,10)
sample(1:10)
#central limt theorem
hist(rnorm(1000))
#3
cars
library(ggplot2)
ggplot(data=cars,aes(speed,dist))+geom_point(size=2,pch=19,col="red")+geom_smooth()+labs(y="distance",x="speed",title="speed vs distance")+theme_bw(base_family="Times")
qplot(data=cars,speed,col="blue")

#4)
fib<-function(first=0,second=1,n){
        if(n==1)
        {
             print(first)   
        }
        else {
                print(first)
                print(second)
        
        for(i in 1:(n-2)){
                temp=first+second
                print(temp)
                first=second
                second=temp
               
        }   
        }
}
fib(2,2,n=8)
fib(2,3,n=8)

fibdif<-function(first=0,second=1,n){
        if(n==1)
        {
                print(first)   
        }
        else {
                print(first)
                print(second)
                
                for(i in 1:(n-2)){
                        temp=second-first
                        print(temp)
                        first=second
                        second=temp
                        
                }   
        }
}
fibdif(n=8)