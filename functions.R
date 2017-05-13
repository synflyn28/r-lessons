#An example of a function
myfib <- function() {
  fib.a <- 1
  fib.b <- 1
  cat(fib.a,", ",fib.b,", ",sep = "")
  repeat{
    temp <- fib.a + fib.b
    fib.a <- fib.b
    fib.b <- temp
    cat(fib.b,", ",sep="")
    if(fib.b > 150) {
      cat("BREAK NOW...")
      break
    }
  }
}
myfib()

#Adding arguments
myfib2 <- function(thresh) {
  fib.a <- 1
  fib.b <- 1
  cat(fib.a,", ",fib.b,", ",sep = "")
  repeat{
    temp <- fib.a + fib.b
    fib.a <- fib.b
    fib.b <- temp
    cat(fib.b,", ",sep="")
    if(fib.b > thresh) {
      cat("BREAK NOW...")
      break
    }
  }
}
myfib2(thresh=150)
myfib2(thresh=1000000)

#Returning objects
myfib3 <- function(thresh){
  fibseq <- c(1,1)
  counter <- 2
  repeat{
    fibseq <- c(fibseq, fibseq[counter-1]+fibseq[counter])
    counter <- counter+1
    if(fibseq[counter]>thresh){
      break
    }
  }
  return(fibseq)
}
myfib3(150)
foo <- myfib3(10000)
bar <- foo[1:5]

#Using return
dummy1 <- function () {
  aa <- 2.5
  bb <- "string me along"
  cc <- "string 'em up"
  dd <- 4:8
}

dummy2 <- function() {
  aa <- 2.5
  bb <- "string me along"
  cc <- "string 'em up"
  dd <- 4:8
  return(dd)
}

foo <- dummy1()
bar <- dummy2()