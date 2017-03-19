#Question A
foo <- array(data = 1:36, dim = c(3, 3, 4))
bar <- as.vector(foo)
baz <- as.character(bar)
qux <- as.factor(baz)
quux <- bar+c(-0.1, 0.1)
class(foo)
class(bar)
class(baz)
class(qux)
class(quux)

#Question B
sums <- c(
  is.numeric(foo)+is.integer(foo),
  is.numeric(bar)+is.integer(bar),
  is.numeric(baz)+is.integer(baz),
  is.numeric(qux)+is.integer(qux),
  is.numeric(quux)+is.integer(quux)
)
sums_factor <- as.factor(sums)
as.numeric(sums_factor) #Different because of "level numbers"

#Question C
ex_matrix <- matrix(data = 2:13, nrow = 3, ncol = 4)
as.character(as.vector(ex_matrix))

#Question D
col_matrix = cbind(
  c(34, 23, 33, 42, 41),
  c(0, 1, 1, 0, 0),
  c(1, 2, 1, 1, 2)
)
col_frame <- as.data.frame(col_matrix)
col_frame$V2 <- as.logical(col_frame$V2)
col_frame$V3 <- as.factor(col_frame$V3)
