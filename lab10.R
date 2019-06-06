#question-1
A <- matrix(nrow=3, data=c(1,6,-2,2,4,1,3,1,-1))
B <- matrix(nrow = 3, data=c(1,2,-3,4,5,6,7,8,9))
solve(A)
t(A)
A%*%B
eigen(A)
e <- eigen(A)
A%*%e$vectors[,1]
e$values[1]*e$vectors[,1]
#question-2
A <- matrix(nrow = 4, data = c(0,0.9775,0,0,0.0043,0.9111,0.0736,0,0.1132,0,0.9534,0.0452,0,0,0,0.9804))
eigen(A)
T <- A
T[1,] <- 0
N <- solve(diag(4)-T)
N
T
#question-3
root <- uniroot(f=function(x) exp(x)-4*x^2,interval = c(0,1))
root
curve(exp(x)-4*x^2,0,1)
#question-4
res <- vector()
for(x in 1:100){
  res[x]<-uniroot(f=function(y) y*(3+x)*(1+y)^4-1000,c(-1000,1000))
}
plot(1:100,res,type = "l")
