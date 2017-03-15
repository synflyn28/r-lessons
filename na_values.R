#Example usages of NA values
foo <- c("character", "a", NA, "with", "string", NA)
bar <- factor(c("blue", NA, NA, "blue", "green", "blue", NA, "red", "red", "green"))
baz <- matrix(c(1:3, NA, 5, 6, NA, 8, NA), nrow=3, ncol=3)

#Find out which values are/aren't NA
qux <- c(NA, 5.89, Inf, NA, 9.43, -2.35, NaN, 2.10, -8.53, -7.58, NA, -4.58, 2.01, NaN)
is.na(x=qux)

#Find NA and NaN values seperately
which(is.nan(x=qux)) #Identify NaN values
which(x=is.na(x=qux)&!is.nan(x=qux))

#Omit NA values from an array
quux <- na.omit(object=qux)
