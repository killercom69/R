#question-1
iris
class(iris)
dim(iris)
attach(iris)
plot(Petal.Length,Petal.Width,xlab="Petal Length",ylab = "Petal Width",main = "Petal Scatterplot")
plot(Petal.Length,Petal.Width,xlab="Petal Length",ylab = "Petal Width",col = c("red","blue","green")[Species],main = "Petal Scatterplot")
legend("bottomright",pch=15,col = c("red","blue","green"),legend = levels(Species),cex=0.75)
par(mfrow=c(2,2))
boxplot(Sepal.Length~Species, data=iris,main="sepal length")
boxplot(Sepal.Width~Species, data=iris,main="sepal width")
boxplot(Petal.Length~Species, data=iris,main="petal length")
boxplot(Petal.Width~Species, data=iris,main="petal width")
?boxplot
mtext(outer=TRUE,side=3,line=-2,"Iris data set",cex=1.5)
#question-2
install.packages("deSolve")
library(deSolve)
model <- function(time,VAR,pars){
  with(as.list(c(VAR,pars)), {
    dx <- a*x*(1-x/K)-b*x*y
    dy <- g*b*x*y - e*y
    return(list(c(dx,dy)))
  })
}
pars <- c(a=0,b=0.0002,K=500,g=0.8,e=0.03)
VAR <- c(x=200,y=50)
times <- seq(0,1000,1)
model(time,VAR,pars)
out <- as.data.frame(lsoda(VAR,times,model,pars))
plot(out$x,out$y,type="l")
