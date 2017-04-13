#Exact matching
bar <- matrix(data = 1:9, nrow = 3, ncol = 3, dimnames = list(c("A", "B", "C"), c("D", "E", "F")))
#Argument ordering doesn't matter in exact matching
bar <- matrix(dimnames = list(c("A", "B", "C"), c("D", "E", "F")), data = 1:9, nrow = 3, ncol = 3)

#Partial matching
bar <- matrix(nr=3, nc=3, da= 1:9, di=list(c("A", "B", "C"), c("D", "E", "F")))

#Positional matching
args(matrix) # Find the *exact* arguments of a function & their positions
bar <- matrix(1:9, 3, 3, F, list(c("A", "B", "C"), c("D", "E", "F")))

#Mixed matching
bar <- matrix(1:9, 3, 3, dim=list(c("A", "B", "C"), c("D", "E", "F")))

#Ellipsis for any number of arguments
args(data.frame)
