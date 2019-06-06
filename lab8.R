#question-1&2
a <- seq(0,2*pi, length.out = 100)
plot(x=cos(a),y=sin(a))
plot(cos(a), sin(a), type = "l", lwd = 2, xlab = "cos(a)", ylab="sin(a)",axes = TRUE, asp = 1)
#question-3
par(mfrow=c(2,2))
for(i in 1:4){
  curve(sin(i*pi*x),0,1,main=i)
}
#qustion-4
k <- 500

no <- 76.1
a <- 0.02
curve(k/(1+((k-no)-no*exp(-a*(x-1900)))),1900,1980,main="US populatiion",xlab="year",ylab="million",lwd=2)
n <- matrix(ncol=2,data=c(seq(1900,1980,by=10), 76.1,92.4,106.5,123.1,132.6,152.3,180.7,204.9,226.5) )
points(n)
#question-5
par(mfrow=c(2,2))
curve(sin(3*pi*x))
curve(sin(3*pi*x),from = 0,to=2,col="blue",xlab="x",ylab="f(x)",main="curve")
curve(cos(3*pi*x),add=TRUE,col="red",lty=2) 
abline(h=0,lty=2) 
legend("bottomleft",c("sin","cos"),text.col=c("blue","red"),lty=1:2)
getwd()
