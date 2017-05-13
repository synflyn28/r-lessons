#Examples of the three measures of centrality of a singe variable
xdata <- c(2, 4.4, 3, 3, 2, 2.2, 2, 4)
x.bar <- mean(xdata) #Mean, measure of "balance point"
m.bar <- median(xdata)#Mode, "middle magnitude"

#Mode, the most common value
xtab <- table(xdata) #First create a table

#Min, max and range will show the largest and smallest values
#for a variable
min(xdata)
max(xdata)
range(xdata)
d.bar <- xtab[xtab==max(xtab)]

#An exmaple with the provided chickwts dataset
mean(chickwts$weight)
median(chickwts$weight)

#Find the mode of earthquakes in the earthquakes dataset
Qtab <- table(quakes$mag)
Qtab[Qtab==max(Qtab)]

#Many statistical functions don't work with NA by default
mean(c(1, 4, NA))
mean(c(1, 4, NaN))

#Ignore NA/NaN values
mean(c(1, 4, NA), na.rm = TRUE)
mean(c(1, 4, NaN), na.rm = TRUE)

#Calculate statstics grouped by a specific factor
tapply(chickwts$weight, INDEX = chickwts$feed, FUN=mean)

#Counts, frequencies, and proportions (the basic statistics for factors)
table(chickwts$feed)
table(chickwts$feed) / nrow(chickwts) #Proportions
sum(chickwts$feed == "soybean") / nrow(chickwts)
mean(chickwts$feed == "soybean")
mean(chickwts$feed == "soybean"|chickwts$feed == "horsebean")

#Find the proportion of chickens on each type of diet/feed
tapply(chickwts$weight, INDEX = chickwts$feed, FUN = function(x) length(x)/nrow(chickwts))

#Rounding results
round(table(chickwts$feed)/nrow(chickwts), digits = 3)

#Get the *percentage* from a proportion
round(mean(chickwts$feed == "soybean")*100,1)
