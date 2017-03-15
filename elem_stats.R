#Get first 5 rows of preloaded chickwts dataset and view all columns
chickwts[1:5,]
chickwts$weight
chickwts$feed

#View the quakes dataset and make a plot
quakes[1:5,]
plot(quakes$long, quakes$lat, xlab = "Longitude", ylab = "Latitude")

#Create an array for a single variable
xdata <- c(2, 4.4, 3, 3, 2, 2.2, 2, 4)

#Calculate the mean and median of the data
x.bar <- mean(xdata)
m.bar <- median(xdata)
xtab <- table(xdata) # Used to get the mode
min(xdata)
max(xdata)
range(xdata)

#For mode run the max function for the table to get max frequency
max(xtab)
d.bar <- xtab[xtab==max(xtab)] # Return mode

#Now compute some statistics for the example datasets
mean(chickwts$weight)
median(chickwts$weight)
Qtab <- table(quakes$mag)
Qtab[Qtab==max(Qtab)]

#Handle missing data in statistical functions
mean(c(1, 4, NA), na.rm = TRUE)
mean(c(1, 4, NaN), na.rm = TRUE)

#Calculate a statstic per a given level in a factor
tapply(chickwts$weight, INDEX = chickwts$feed, FUN = mean)

#Get the frequencies of a given categorical variable
table(chickwts$feed)
table(chickwts$feed)/nrow(chickwts)
sum(chickwts$feed == "soybean") / nrow(chickwts)
mean(chickwts$feed == "soybean")
mean(chickwts$feed == "soybean" | chickwts$feed == "horsebean")

#Get the proportion of chicks on each diet
tapply(chickwts$weight, INDEX = chickwts$feed, FUN = function(x) length(x)/nrow(chickwts))

#Round proportions to a number of digits
round(table(chickwts$feed)/nrow(chickwts), digits = 3)
