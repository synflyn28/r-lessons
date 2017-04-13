#Built in datasets
#Pull up documentation on built in datasets
library(help="datasets")
?ChickWeight
ChickWeight[1:15,]

#Contributed Datasets
library(tseries)
?ice.river
data(ice.river)
ice.river[1:5,]

#Read in an external "table-format" file
mydatafile <- read.table(
  file="/Users/synflyn/Downloads/BookofR_Resources_updated/8.2.1_mydatafile.txt",
  header = TRUE,
  sep = " ",
  na.strings = "*",
  stringsAsFactors = FALSE
)

#List files in filesystem
list.files("/Users/synflyn")
file.choose() #Open an interactive file chooser from code!

#Read in data using the interactive chooser
mydatafile <- read.table(
  file=file.choose(),
  header = TRUE,
  sep = " ",
  na.strings = "*",
  stringsAsFactors = FALSE
)
#Change sex and funny columns to factors
mydatafile$sex <- as.factor(mydatafile$sex)
mydatafile$funny <- as.factor(mydatafile$funny)

#Read in data from CSV files
spread <- read.csv(
  file="/Users/synflyn/Downloads/BookofR_Resources_updated/8.2.2_spreadsheetfile.csv",
  header = FALSE,
  stringsAsFactors = TRUE
)

#Read in data from the web
dia.url <- "http://www.amstat.org/publications/jse/v9n2/4cdata.txt"
diamonds <- read.table(dia.url)
names(diamonds) <- c("Carat", "Color", "Clarity", "Cert", "Price")

#Write data to a file
write.table(
  x=mydatafile, file = "/Users/synflyn/somenewfile.txt", 
  sep = "@", na = "??", 
  quote = FALSE, row.names = FALSE
)

#Saving plots to files
jpeg(filename = "/Users/synflyn/myjpegplot.jpg", width = 600, height = 600)
plot(
  1:5, 6:10, 
  ylab = "a nice ylab", xlab = "here's an xlab", 
  main = "A saved jpeg plot"
)
points(1:5, 10:6, cex = 2, pch = 4, col = 2)
dev.off()

#Save a ggplot plot graphic
foo <- c(1.1, 2, 3.5, 3.9, 4.2)
bar <- c(2, 2.2, -1.3, 0, 0.2)
qplot(foo, bar, geom = "blank") +
  geom_point(size = 3, shape = 8, color = "darkgreen") +
  geom_line(color = "orange", linetype = 4)
ggsave(filename = "/Users/synflyn/mypngqplot.png")

#Reading and writing arrays and lists
somelist <- list(
  foo = c(5, 2, 45),
  bar = matrix(data = c(T, T, F, F, F, F, T, F, T), nrow = 3, ncol = 3),
  baz = factor(c(1, 2, 2, 3, 1, 1, 3), levels=1:3, ordered = T)
)
dput(x = somelist, file = "/Users/synflyn/myRObject.txt")
