install.packages("R.utils")
library(R.utils)
install.packages("stringr")
library(stringr)
float2Bin<- function(x)
{
  int_part<- floor(x)
  dec_part<- x-int_part
  int2bin<- intToBin(int_part)
  dec2bin<- str_pad(intToBin(dec_part*2^31),31,pad='0')
  paste0(int2bin,".",dec2bin)
}
float2Bin(2.45)


K = 1
2^52+K-2^52
2^53+K-2^53
2^54+K-2^54
K = 2
2^52+K-2^52
2^53+K-2^53
2^54+K-2^54
K = 3
2^52+K-2^52
2^53+K-2^53
2^54+K-2^54
K = 4
2^52+K-2^52
2^53+K-2^53
2^54+K-2^54
Solar.radiation <- c(11.1,10.6,6.3,8.8,10.7,11.2,8.9,12.2)
mean(Solar.radiation)
median(Solar.radiation)
range(Solar.radiation)
var(Solar.radiation)
sr10 <- c(21.1,20.6,16.3,18.8,20.7,21.2,18.9,22.2)
mean(sr10)
median(sr10)
range(sr10)
var(sr10)
hist(Solar.radiation)
hist(sr10)
View(cars)
help(cars)
mean(cars$dist)
cars
attach(cars)
plot(dist,speed,xlab='dist',ylab='speed')