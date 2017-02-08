#Create a string in R
foo <- "This is a Character String"
length(x=foo) # Only 1! Counts the entire string as one item.
nchar(x=foo)
bar <- "23.3"
bar*2 # Supposed to result in error!

#Comparisons and Extra Symbols
"alpha" == "alpha"
"alpha" != "beta"
c("alpha", "beta", "gamma") == "beta"
"alpha"<="beta"
"gamma">"Alpha"
"Alpha">"alpha"
"beta">"bEtA"
baz <- "&_ 4 3 **%.? $ymbolic Non$en$e, ;"

#String Concatenation
qux <- c("awesome", "R", "is")
length(x=qux)
cat(qux[2], qux[3], "totally", qux[1], "!")
paste(qux[2], qux[3], "totally", qux[1], "!")
paste(qux[2], qux[3], "totally", qux[1], "!", sep="---")
paste(qux[2], qux[3], "totally", qux[1], "!", sep="")
cat("Do you think ", qux[2], " ", qux[3], " ", qux[1], "?", sep="")

#Forced Coercion
a <- 3
b <- 4.4
cat("The value stored as 'a' is ", a, ".", sep="")
paste("The value stored as 'b' is ", b, ".", sep="")
cat("The result of A + b is ", a+b, ".", sep="")
paste("Is ", a+b, " less than 10? That's totally ", a+b<10, ".", sep="")

#Escape Sequences
cat("here is a string\nsplit\ttoneww\b\n\tlines")
cat("I really want a backslash: \\\n and a double-quote: \"")
setwd("/Users/towershine/r-lessons")

#Substrings and Matching
foo <- "This is a character string!"
substr(x=foo, start=21, stop=27)
substr(x=foo, start=1, stop=4) <- "Here"
bar <- "How much wood could a woodchuck chuck?"
sub(pattern="chuck", replacement="hurl", x=bar)
gsub(pattern="chuck", replacement="hurl", x=bar)
