#Infinity values
foo <- Inf
bar <- c(3401, Inf, 3.1, -555, Inf, 43)
baz <- 90000^100
qux <- c(-42, -Inf, -Inf, -Inf, -45632.3)
is.infinite(x=qux)
is.finite(x=qux)

#NaN Values
foo <- NaN
bar <- c(NaN, 54.3, -2, NaN, 90094.123, -Inf, 55)
is.nan(x=bar)
!is.nan(x=bar)
is.nan(x=bar)|is.infinite(x=bar)
bar[-(which(is.nan(x=bar) | is.infinite(x=bar)))]
