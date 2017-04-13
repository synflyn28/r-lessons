library(ggplot2)

#Create a basic plot with ggplot2
foo <- c(1.1, 2, 3.5, 3.9, 4.2)
bar <- c(2, 2.2, -1.3, 0, 0.2)
qplot(foo, bar)

#Add titles and labels
qplot(foo, bar, main = "My Lovely qplot", xlab = "x axis label", ylab = "y axis label")

#Using geoms
qplot(foo, bar, geom = "blank") + geom_point() + geom_line()
qplot(foo, bar, geom = "blank") + geom_point(size = 3, shape = 6, color = "blue") + geom_line(color = "red", linetype = 2)

#Test out different figure options 
myqplot <- qplot(foo, bar, geom = "blank") + geom_line(color = "red")
myqplot + geom_point(size = 3, shape = 3, color = "blue")
myqplot + geom_point(size = 3, shape = 7, color = "blue")

#Aesthetic mappings
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,
       3.41,-8.23,-12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78, 10.4, -8.2, 11.0)
ptype <- rep(NA, length(x=x))
ptype[y>=5] <- "too big"
ptype[y<=-5] <- "too small"
ptype[(x>=5&x<=15)&(y>-5&y<5)] <- "sweet"
ptype[(x<5|x>15)&(y>-5&y<5)] <- "standard"
ptype <- factor(x=ptype)
qplot(x, y, color=ptype, shape=ptype)
qplot(x, y, color=ptype, shape=ptype) +
  geom_point(size=4) +
  geom_line(mapping = aes(group=1), color = "black", lty=2) +
  geom_hline(mapping = aes(yintercept = c(-5, 5)), color = "red") +
  geom_segment(mapping=aes(x = 5,y = -5,xend = 5, yend = 5), color = "red", lty = 3) +
  geom_segment(mapping = aes(x = 15, y = -5, xend = 15, yend = 5), color = "red", lty = 3)