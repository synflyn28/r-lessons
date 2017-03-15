foo <- list(
  seq(from = -4, to = 4, length.out = 20), matrix(data = c(F,T,T,T,F,T,T,F,F), nrow = 3, ncol = 3),
  c("don", "quixote"), factor(x=c("LOW", "MED", "LOW", "MED", "MED", "HIGH")))

#Question A

#i
foo[[2]][2:1,2:3]

#ii
foo[[3]] <- sub("don", "Don", x = foo[[3]])
foo[[3]] <- sub("quixote", "Quixote", x = foo[[3]])
cat("Windmills!", "ATTACK!", "\n", " ", "-\\", foo[[3]], "/-")

#iii
foo[[1]][foo[[1]] > 1]

#iv
which(foo[[4]] == "MED")

#Question B
bar <- list(facs=foo[[4]], nums = c(3, 2.1, 3.3, 4, 1.5, 4.9), oldlist = foo[1:3])

#i
bar$facs[bar$nums > 3]

#ii
bar$flags <- rep(bar$oldlist[[2]][,3], times = 2)

#iii
bar$oldlist[[1]][!bar$flags == TRUE]

#iv
bar$oldlist[[3]] <- "Don Quixote"
