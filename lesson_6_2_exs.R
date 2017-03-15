#Question A
foo <- c(4.3, 2.2, NULL, 2.4, NaN, 3.3, 3.1, NULL, 3.4, NA)

#i
length(x=foo)
#ii
which(x=is.na(x=foo))
#iii
is.null(foo)
#iv
is.na(x=foo[8])+4/NULL

#Question B
bar <- list(c(7, 7, NA, 3, NA, 1, 1, 5, NA))

#i
names(bar) <- "alpha"

#ii
is.null(bar$beta)

#iii
bar$beta <- which(is.na(bar$alpha))

