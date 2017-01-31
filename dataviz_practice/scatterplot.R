library(ggplot2)
library(plotly)

#Create example data for scatterplot
x_values <- 0:20
y_values <- 2:22
example_dataset <- data.frame(x_values, y_values)

#Make a basic scatterplot of the data using ggplot2
scatterplot <- ggplot(example_dataset, aes(x=x_values, y=y_values)) + geom_point(shape=1)
ggplotly(scatterplot)
