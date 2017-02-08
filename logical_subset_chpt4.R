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

#Logical subsetting for multidimensional arrays
A <- rbind(c(0.3, 91, -4.2), c(4.5, 0.1, 8.2), c(55.3, 105.5, 27.9))
A[c(T,F,F), c(F,T,T)]
A<7
A[A<7] <- -7
which(x=A>25)
which(x=A>25, arr.ind=TRUE)
