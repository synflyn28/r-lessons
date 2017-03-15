#Get the explicit attributes of an object
foo <- matrix(data=1:9, nrow = 3, ncol = 3)
attributes(foo)
attr(x=foo, which="dim")
dim(foo) #Functions like this are usually made to access implicit attributes

#Get more explicit attributes
#Most explicit attributes are optional arguments in functions like this
bar <- matrix(data = 1:9, nrow = 3, ncol = 3, dimnames = list(c("A", "B", "C"), c("D", "E", "F")))
attributes(bar)
dimnames(bar)
dimnames(foo) <- list(c("A", "B", "C"), c("D", "E", "F")) #Attribute specific fn re-assignment

#Get the class attribute for a set of objects in this case information
#about content that is stored
num.vec1 <- 1:4
num.vec2 <- seq(from=1, to=4, length=6)
char.vec <- c("a", "few", "strings", "here")
logic.vec <- c(T, F, F, F, T, F, T, T)
fac.vec <- factor(c("Blue", "Blue", "Green", "Red", "Green", "Yellow"))
class(num.vec1)
class(num.vec2)
class(char.vec)
class(logic.vec)
class(fac.vec)

#Get the class attribute for objects that return *structure* information
num.mat1 <- matrix(data = num.vec1, nrow = 2, ncol = 2)
num.mat2 <- matrix(data = num.vec2, nrow = 2, ncol = 3)
char.mat <- matrix(data = char.vec, nrow = 2, ncol = 2)
logic.mat <- matrix(data = logic.vec, nrow = 4, ncol = 2)
class(num.mat1)
class(num.mat2)
class(char.mat)
class(logic.mat)

#Multiple Classes
ordfac.vec <- factor(
  x = c("Small", "Large", "Large", "Regular", "Small"),
  levels = c("Small", "Regular", "Large"),
  ordered = TRUE
)
class(ordfac.vec) #This returns this object's class and "subclass" names

#Is dot checking
num.vec1 <- 1:4
is.integer(num.vec1)
is.numeric(num.vec1)
is.matrix(num.vec1)
is.data.frame(num.vec1)
is.vector(num.vec1)

#As dot coercion
as.numeric(c(T, F, F, T))
1:4+as.numeric(c(T, F, F, T))
foo <- 34
foo.ch <- as.character(foo)
bar <- T
bar.ch <- as.character(bar)
paste("Definitely foo: ", foo.ch, "; definitely bar: ", bar.ch,".",sep = "")

#More as dot coercion
as.numeric("32.4")
as.numeric("g'day mate") #makes no sense
as.logical(c("1", "0", "1", "0", "0")) #no direct conversion
as.logical(as.numeric(c("1", "0", "1", "0", "0")))

#Coercing factors
baz <- factor(x=c("male", "male", "female", "male"))
as.numeric(baz)
qux <- factor(x=c(2, 2, 3, 5))
as.numeric(qux) #Returns "level numbers" instead of the real numbers

#Coercing between data structures
foo <- matrix(data=1:4, nrow = 2, ncol = 2)
as.vector(foo) #flatten a matrix
bar <- array(data=c(8, 1, 9, 5, 5, 1, 3, 4, 3, 9, 8, 8), dim = c(2, 3, 2))
as.matrix(bar)
as.vector(bar)
baz <- list(var1 = foo, var2 = c(T, F, T), var3 = factor(x = c(2,3,4,4,2)))
as.data.frame(baz)
qux <- list(var1 = c(3, 4, 5, 1), var2 = c(T, F, T, T), var3 = factor(x = c(4,4,2,1)))
as.data.frame(qux)
