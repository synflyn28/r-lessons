#A simple example of a while loop
myval <- 5
while(myval < 10) {
  myval <- myval + 1
  cat("\n'myval' is now", myval, "\n")
  cat("'mycondition' is now", myval < 10, "\n")
}

#A more complicated while loop
mylist <- list()
counter <- 1
mynumbers <- c(4, 5, 1, 2, 6, 2, 4, 6, 6, 2)
mycondition <- mynumbers[counter] <= 5

while (mycondition) {
  mylist[[counter]] <- diag(mynumbers[counter])
  counter <- counter+1
  if(counter<=length(mynumbers)){
    mycondition <- mynumbers[counter] <= 5
  } else {
    mycondition <- FALSE
  }
}