#Creating a list
foo <- list(matrix(data=1:4, nrow=2, ncol=2), c(T, F, T, T), "hello")
length(x=foo)

#*Double Square brackets are used to get list elements in R*
foo[[1]]
foo[[3]]
foo[[1]] + 5.5
foo[[1]][1, 2]
cat(foo[[3]], "you!")

#Overwrite an element in the list
foo[[3]]
foo[[3]] <- paste(foo[[3]], "you!")

#Retrieve multiple items from a list
foo[[c(2, 3)]] # wrong
bar <- foo[c(2, 3)]

#Naming elements in a list
names(foo) <- c("mymatrix", "mylogicals", "mystring")
foo$mymatrix
all(foo$mymatrix[,2]==foo[[1]][,2])

#Name elements in a list as they are made
baz <- list(tom=c(foo[[2]],T,T,T,F), dick="g'day mate", harry=foo$mymatrix*2)

#Add new elements to a labeled list
baz$bobby <- foo
