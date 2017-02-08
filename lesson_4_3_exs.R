#Question A
foo <- c(7,5,6,1,2,10,8,3,8,2)
bar <- foo[foo>=5]
foo[-which(foo>=5)]

#Question B
baz <- matrix(data=bar, nrow=2, ncol=3, byrow=TRUE)
baz[baz==8] <- baz[1, 2]^2
length(baz[baz<=25 & baz>4]) == length(baz)

#Question C
qux <- c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3)
which(qux==3|qux==4)
qux[qux<3|qux>=7] <- 100

#Question D
foo[c(F,T)]
foo[c(0, 1)]