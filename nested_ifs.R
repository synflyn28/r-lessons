#An example of a nested if statement
a <- 6
mynumber <- 4

if (a <= mynumber) {
  cat("First condition was TRUE\n")
  a <- a^2
  if (mynumber>3) {
    cat("Second condition was TRUE\n")
    b <- seq(1, a, length=mynumber)
  } else {
    cat("Second condition was FALSE\n")
    b <- a*mynumber
  }
} else {
  cat("First condition was FALSE\n")
  a <- a-3.5
  if (mynumber >= 4) {
    cat("Second condition was TRUE\n")
    b <- a ^ (3 - mynumber)
  } else {
    cat("Second condition was FALSE\n")
    b <- rep(a+mynumber, times=3)
  }
}

#An example of a nested if statement using logical expressions
a <- 6
mynumber <- 4

if(a<=mynumber && mynumber >3) {
  cat("Same as 'first condition TRUE and second TRUE'")
  a <- a ^ 2
  b <- seq(1, a, length=mynumber)
} else if (a<=mynumber && mynumber<=3) {
  cat("Same as 'first condition TRUE and second FALSE")
  a <- a ^ 2
  b <- a*mynumber
} else if (mynumber >= 4) {
  cat("Same as 'first conditon FALSE and second TRUE'")
  a <- a - 3.5
  b <- a ^ (3 - mynumber)
} else {
  cat("Same as 'first condition FALSE and second FALSE'")
  a <- a - 3.5
  b <- rep(a+mynumber, times=3)
}