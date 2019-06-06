answer <- 1
for(j in 1:5){
  answer<- (answer*j)
}  
answer
n <- 5
rate <- 3
price <- 2000
total_interest <- 0
for (i in n){
  total_interest <- total_interest + (price*(1+(rate)^n)/100)
}
cat("The compound interest calculated is",total_interest)
View(cars)
cor(cars$speed, cars$dist)
linearMod <- lm(dist ~ speed, data=cars)
print(linearMod)
summary(linearMod)