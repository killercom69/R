#Lab4 Question 1
n <- 5
price <- 2000
rate <- 3
total_interest <- 0
for (i in n){
  total_interest <- total_interest+(price*(1+(rate)^n)/100)
}
cat("The interest calculated is",total_interest)
#Question 2
r <-7
areaofcircle <- pi*(r)^2
cat(areaofcircle,"cm")
#Question 3
diff1 <- c(48:14^2)
diff2 <- c(48:(14^2))
if (all.equal(diff1,diff2)){
  print("48:14^2 is same as 48:(14^2)")
} else {
  print("48:14^2 is different than 48:(14^2)")
}
#Question 4
a <- c(rep(seq(1,5,1), times = 5))
print(a)
b <- c(rep(seq(0,4,1), each = 5))       
print(b)
#Question 5
fact <- c(0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1)
fac <- as.factor(fact)
levels(fac) <- c("Male","Female")
fac
#Question 6
more.colors <- c("red","yellow","blue","green","magneta","cyan")
more.colors[rep(seq(1,3),times=4)+rep(seq(0,3),each=3)]