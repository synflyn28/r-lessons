#Question A
arg_mat <- apply(foo, 1, sort, decreasing = TRUE)
apply(arg_mat, 2, prod)

#Question B
matlist <- list(
  matrix(c(T, F, T, T), 2, 2),
  matrix(c("a","c","b","z","p","q"),3,2),
  matrix(1:8,2,4)
)

matlist <- lapply(matlist, t)

#Question C
qux <- array(96:1, dim=c(4,4,2,3))

#i
apply(qux[,,2,], 3, diag)

#ii
apply(apply(qux[,4,,], 3, dim), 1, sum)
