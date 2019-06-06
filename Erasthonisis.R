erasthonisis <- function(num){
  values <- rep(TRUE,num)
  values[1] <- FALSE
  prev.prime <- 2
  for (i in prev.prime:sqrt(num)){
    values[seq.int(2*prev.prime,num,prev.prime)] <- FALSE
    prev.prime <- prev.prime + min(which(values[(prev.prime+1):num]))
  }
  return(which(values))
}

erasthonisis(2000)
