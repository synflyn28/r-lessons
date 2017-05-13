#Question A
View(head(quakes))
round(sum(quakes$depth >= 300) / nrow(quakes), 2)

#Question B
mean(quakes[quakes$depth, "mag"])
median(quakes[quakes$depth, "mag"])

#Question C
View(head(chickwts))
for (i in levels(chickwts$feed)) {
  cat(i,": ",round(mean(chickwts$weight[chickwts$feed==i]),1), " grams\n", sep = "")
}

#Question D
View(head(InsectSprays))
class(InsectSprays$count)
class(InsectSprays$spray)

#Question E
count.tab <- table(InsectSprays$count)
count.tab[count.tab==max(count.tab)]

#Question F
tapply(InsectSprays$count, INDEX = InsectSprays$spray, FUN = sum)

#Question G
for (i in levels(InsectSprays$spray)) {
  cat(i, ": ", round(mean(InsectSprays$count[InsectSprays$spray==i] >=5) * 100, 0), "\n", sep="")
}

#Question H
tapply(InsectSprays$count, INDEX = InsectSprays$spray, FUN = function(x) round(mean(x>=5) * 100, 0))
