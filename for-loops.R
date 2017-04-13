#An example of a for loop
for (myitem in 5:7) {
  cat("--BRACED AREA BEGINS--\n")
  cat("the current item is", myitem, "\n")
  cat("--BRACED AREA ENDS--\n\n")
}

#Manipulate objects outside of a loop
counter <- 0
for (myitem in 5:7) {
  counter <- counter + 1
  cat("The item in run", counter, "is", myitem, "\n")
}

#Looping via index vs. looping via value
myvec <- c(0.4, 1.1, 0.34, 0.55)

for (i in myvec) {
  print(2*i)
}

for (i in 1:length(myvec)) {
  print(2*myvec[i])
}

#Inspect members of a list using a loop
foo <- list(
  aa=c(3.4, 1), bb=matrix(1:4, 2, 2), 
  cc=matrix(c(T, T, F, T, F, F), 3, 2), dd="string here",
  ee=matrix(c("red", "green", "blue", "yellow"))
)
name <- names(foo)
is.mat <- rep(NA, length(foo))
nr <- is.mat
nc <- is.mat
data.type <- is.mat

for (i in 1:length(foo)) {
  member <- foo[[i]]
  if(is.matrix(member)) {
    is.mat[i] <- "Yes"
    nr[i] <- nrow(member)
    nc[i] <- ncol(member)
    data.type[i] <- class(as.vector(member))
  } else {
    is.mat[i] <- "No"
  }
}
bar <- data.frame(name, is.mat, nr, nc, data.type, stringsAsFactors = FALSE)

#Nesting for loops
loopvec1 <- 5:7
loopvec2 <- 9:6
foo <- matrix(NA, length(loopvec1), length(loopvec2))

for(i in 1:length(loopvec1)) {
  for(j in 1:length(loopvec2)){
    foo[i, j] <- loopvec1[i]*loopvec2[j]
  }
}

#Match inner and outer loop indexes
foo <- matrix(NA, length(loopvec1), length(loopvec2))
for (i in 1:length(loopvec1)) {
  for (j in 1:i) {
    foo[i, j] <- loopvec1[i]+loopvec2[j]
  }
}

