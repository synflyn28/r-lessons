#An example of a switch statement
mystring <- "Lisa"
mystring <- "Peter"
foo <- switch(EXPR = mystring, Homer=12, Marge=34, Bart=56, Lisa=78, Maggie=90, NA)

#Integer switches
mynum <- 3
mynum <- 0
foo <- switch(mynum, 12, 34, 56, 78, NA)
