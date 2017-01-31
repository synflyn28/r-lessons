#Store Logical variables
foo <- TRUE
bar <- FALSE
baz <- c(T, F, F, F, T, F, T, T, T, F, T, F)

#Get length of logical array
length(x=baz)

#Create a multidimensional array
qux <- matrix(data=baz, nrow=3, ncol=4, byrow=foo)
qux # Display variable representation in console

#Examples of common relational operators
1==2
1>2
(2-1)<=2
1!=(2+3)

#Run elementwise comparisons between two vectors
foo <- c(3, 2, 1, 4, 1, 2, 1, -1, 0, 3)
bar <- c(4, 1, 2, 1, 1, 0, 0, 3, 0, 4)
length(x=foo)==length(x=bar) # Check to see if vectors have common lengths
foo==bar
foo<bar
foo<=bar
foo<=bar+10

#Example of vector recycling
baz <- foo[c(10, 3)]
baz
foo>baz
foo<3

#Convert results in a 2 dimensional matrix
foo.mat <- matrix(foo, nrow=5, ncol=2)
foo.mat
bar.mat <- matrix(bar, nrow=5, ncol=2)
bar.mat

#Compare the two 2D matrices
foo.mat<=bar.mat
foo.mat<3

#Look for *any true values* or *all true values*
qux <- foo==bar
any(qux)
all(qux)
quux <- foo<=(bar+10)
any(quux)
all(quux)
