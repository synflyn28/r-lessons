#Find the sum of an entire matrix
foo <- matrix(1:12, 4, 3)
sum(foo)

#Find the sums of the rows
row.totals2 <- apply(X=foo, MARGIN = 1, FUN = sum)

#Find the sum of the columns
apply(X=foo, MARGIN = 2, FUN = sum)

#Apply a function for each layer for a multi-dimensional array
bar <- array(1:18, dim=c(3, 3, 2))
apply(bar, 3, FUN = diag)

#Tapply usage
dia.url <- "http://www.amstat.org/publications/jse/v9n2/4cdata.txt"
diamonds <- read.table(dia.url)
names(diamonds) <- c("Carat","Color","Clarity","Cert","Price")
diamonds[1:5,]
tapply(diamonds$Price, INDEX = diamonds$Color, FUN = sum)

#lapply and sapply usage
baz <- list(
  aa=c(3.4, 1), bb=matrix(1:4, 2, 2), 
  cc=matrix(c(T,T,F,T,F,F), 3, 2), dd="string here",
  ee=matrix(c("red","green","blue","yellow"))
)

lapply(baz, FUN = is.matrix)
sapply(baz, FUN = is.matrix)

#Additional arguments to a mapped function
apply(foo, 1, sort, decreasing = TRUE)
