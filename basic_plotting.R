#Example of a basic plot
foo <- c(1.1, 2, 3.5, 3.9, 4.2)
bar <- c(2, 2.2, -1.3, 0, 0.2)
plot(foo,bar)

#Plot a basic plot with a named matrix
baz <- cbind(foo, bar)
plot(baz)

#Automatic plot types
plot(foo, bar, type = "l") #Line
plot(foo, bar, type = "b") #Line with points

#Title and axis labels
plot(
  foo, bar, 
  type = "b", main = "My Lovely Plot", 
  xlab = "x axis label", ylab = "location y"
)
plot(
  foo, bar, 
  type = "b", main = "My Lovely Plot\ntitle on two lines", 
  xlab = "", ylab = ""  
)

#Color
plot(
  foo, bar,
  type = 'b', main = "My Lovely Plot",
  xlab = "", ylab = "", col = 2
) #Turn the plot red

plot(
  foo, bar,
  type = 'b', main = "My Lovely Plot",
  xlab = "", ylab = "", col = "seagreen4"
) 

#Line and Point appearances
plot(
  foo, bar,
  type = "b", main = "My Lovely Plot",
  xlab = "", ylab = "",
  col = 4, pch = 8,
  lty = 2, cex = 2.3,
  lwd = 3.3
)

plot(
  foo, bar,
  type = "b", main = "My Lovely Plot",
  xlab = "", ylab = "",
  col = 6, pch = 15,
  lty = 3, cex = 0.7,
  lwd = 2
)

#Build plot with lines, text, and legend
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
  -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-13.00, -8.30, -2.50)
plot(x, y, type = "n", main="")
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)
segments(
  x0 = c(5, 15), y0 = c(-5, -5), 
  x1 = c(5, 15), y1 = c(5, 5), 
  col = "red", lty = 2, 
  lwd = 2
)
points(x[y > 5], y[y > 5], pch = 4, col = "darkmagenta", cex = 2)
points(x[y < -5], y[y < -5], pch = 3, col = "darkgreen", cex = 2)
points(x[(x>=5&x<=15)&(y>-5&y<5)], y[(x>=5&x<=15)&(y>-5&y<5)], pch = 19, col = "blue")
points(x[(x<5|x>15)&(y>-5&y<5)],y[(x<5|x>15)&(y>-5&y<5)])
lines(x, y, lty = 4)
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5)
text(x = 8, y = 14, labels = "sweet spot")
