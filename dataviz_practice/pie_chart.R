library(ggplot2)
library(scales)

#Create data frame with sample data to plot
example_data <- data.frame(
  Gender=c("Male", "Female", "Transgender"),
  value=c(0.4, 0.5, 0.1)
)

#Plot data originally as a stacked bar chart
bar_plot <- ggplot(example_data, aes(x="", y=value, fill=Gender)) + 
  geom_bar(width=1, stat="identity") + 
  ggtitle("Gender Distribution")

#Create pie chart
pie_chart <- bar_plot+coord_polar("y", start=0) +
  theme(
    axis.text.x = element_blank(), 
    axis.title.x = element_blank(), 
    axis.title.y = element_blank(),
    panel.grid = element_blank(),
    plot.title = element_text(hjust=0.55),
    panel.background = element_blank()
  ) 

#Add labels to pie chart
pie_chart + geom_text(aes(label = percent(value)), position=position_stack(vjust = 0.5))

