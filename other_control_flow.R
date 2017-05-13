#break declaration
foo <- 5
bar <- c(2,3,1.1,4,0,4.1,3)
loop1.result <- rep(NA, length(bar))

for(i in 1:length(bar)) {
  temp <- foo/bar[i]
  if (is.finite(temp)) {
    loop1.result[i] <- temp
  } else {
    break
  }
}

#Next declaration
loop2.result <- rep(NA, length(bar))

for(i in 1:length(bar)) {
  if(bar[i] == 0) {
    next
  }
  loop2.result[i] <- foo/bar[i]
}

#Next (or break) on nested loops
loopvec1 <- 5:7
loopvec2 <- 9:6

baz <- matrix(NA, length(loopvec1), length(loopvec2))
for(i in 1:length(loopvec1)){
  for(j in 1:length(loopvec2)) {
    temp <- loopvec1[i] * loopvec2[j]
    if(temp >= 54) {
      next
    }
    baz[i, j] <- temp
  }
}

#Repeat statement
fib.a <- 1
fib.b <- 1

repeat{
  temp <- fib.a+fib.b
  fib.a <- fib.b
  fib.b <- temp
  cat(fib.b,", ", sep = "")
  if(fib.b > 150) {
    cat("BREAK NOW...\n")
    break
  }
}