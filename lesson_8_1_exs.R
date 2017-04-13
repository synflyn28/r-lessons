#Question A
?quakes
#i
out_data <- quakes[quakes$mag > 5,]
write.table(out_data, file = "/Users/synflyn/q5.txt", sep = "!", row.names = FALSE)
#ii
q5.dframe <- read.table(file="/Users/synflyn/q5.txt", sep = "!", header = TRUE)
