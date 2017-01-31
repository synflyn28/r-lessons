library(ggplot2)

#Create sample data to plot
categories <- c("foo", "bar", "example")
values <- c(1, 2, 10)
all_data <- data.frame(categories, values)

#Use ggplot2 to create a simple bar char
ggplot(all_data, aes(x=categories, y=values)) + geom_bar(aes(fill=categories), stat="identity")
