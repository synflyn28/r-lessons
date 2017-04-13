#A single if statement
a <- 3
mynumber <- 4

if (a<=mynumber){
  a <- a ^ 2
}

#More complicated if statements
myvec <- c(2.73, 5.40, 2.15, 5.29, 1.36, 2.16, 1.41, 6.97, 7.99, 9.52)
mymat <- matrix(c(2, 0, 1, 2, 3, 0, 3, 0, 1, 1), 5, 2)

if (any((myvec - 1) > 9) || matrix(myvec, 2, 5) [2, 1] <= 6){
  cat("Condition satisfied --\n")
  new.myvec <- myvec
  new.myvec[seq(1, 9, 2)] <- NA
  mylist <- list(aa = new.myvec, bb = mymat + 0.5)
  cat("-- a list with", length(mylist), "members now exist")
}

#Else statements
a <- 3
mynumber <- 4
if (a<=mynumber) {
  cat("Condition was", a<=mynumber)
  a <- a^2
} else {
  cat("Condition was", a<=mynumber)
  a <- a-3.5
}

#Element-wise if else checking
x <- 5
y <- -5:5
result <- ifelse(test = y==0, yes=NA, no=x/y)
