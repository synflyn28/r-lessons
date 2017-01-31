#Logicals are numbers
TRUE+TRUE
FALSE-TRUE
T+T+F+T+F+F+T
1&&1
1||0
0&&1

#Examples of subsetting
myvec <- c(5, -2.3, 4, 4, 4, 6, 8, 10, 40221, -8)
myvec[c(F, T, F, F, F, F, F, F, F, T)]
myvec<0
myvec[myvec<0]
myvec[c(T, F)]
myvec[(myvec>0)&(myvec<1000)]
myvec[myvec<0] <- -200

#Change a logical subset array into an array of index values
which(x=c(T, F, F, T, T))
which(x=myvec<0)
myvec[-which(x=myvec<0)]
