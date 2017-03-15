# Question A
foo <- c(13563, -14156, -14319, 16981, 12921, 11979, 9568, 8833, 8133)
#i
foo_pow <- foo^75
foo_pow[is.finite(foo_pow)]
#ii
foo_pow[!foo_pow == -Inf]

# Question B
bar <- matrix(
  data = c(77875.40, 27551.45, 23764.30, -36478.88, 
           -35466.25, -73333.85, 36599.69, -70585.69,
           -39803.81, 55976.34, 76694.82, 47032.00
           ),
  nrow = 3,
  ncol = 4
)
#i
which(x=is.nan((bar^65)/Inf))
#ii
bar[!is.nan((bar^67)+Inf)]
bar[(bar^67)!=-Inf]
#iii
bar[bar==-Inf|is.finite(bar^67)]

