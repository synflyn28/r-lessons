#List variables in global environment
foo <- 4 + 5
bar <- "stringtastic"
ls()

#List all items in a package environment
ls("package:graphics")

#Local environments
youthspeak <- matrix(data=c("OMG", "LOL", "WTF", "YOLO"), nrow = 2, ncol = 2)

#View R's search path
search()

#View an enclosing environment on a function
environment(seq)
environment(arrows)

#Using library function to append needed package to search path
library("car")
search()

#Looking for a function or object not in the search path
neither.here()
nor.there

#Reserved names
NaN <- 5
rm(list=ls())
ls()
