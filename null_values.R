#Show the usage of NULL
foo <- NULL
bar <- NA
c(2, 4, NA, 8)
c(2, 4, NULL, 8)
c(NA, NA, NA)
c(NULL, NULL, NULL)

#Check whether a value is NULL
opt.arg <- c("string1", "string2", "string3")
is.na(opt.arg)
is.null(opt.arg)
opt.arg <- c(NA, NA, NA)
is.na(x=opt.arg)
opt.arg <- c(NULL, NULL, NULL)
is.null(x=opt.arg)

#NULLs in Lists or DataFrames
foo <- list(member1=c(33,1,5.2,7), member2="NA or NULL?")
foo$member3
foo$member3 <- NA
