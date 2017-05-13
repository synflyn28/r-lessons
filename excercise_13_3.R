#Question A
View(head(chickwts))
quantile(chickwts$weight, prob=c(0.1, 0.3, 0.9))
tapply(chickwts$weight, INDEX = chickwts$feed, FUN = var)

#Question B
View(head(quakes))

#i
IQR(quakes$depth)

#ii
summary(quakes$mag[quakes$depth >= 400])

#iii
