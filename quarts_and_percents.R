#Find the 0.8 quantile of a variable
xdata <- c(2,4.4,3,3,2,2.2,2,4)
quantile(xdata, prob=0.8)
quantile(xdata, prob = c(0,0.25,0.5,0.75,1)) #five number summary

#Another way to get the five number summary
summary(xdata)

#Quantiles for real world data
quantile(chickwts$weight, prob=c(0.25, 0.75))
summary(quakes$mag[quakes$depth < 400])

#Describing spread
ydata <- c(1,4.4,1,3,2,2.2,2,7)
mean(xdata)
mean(ydata)

plot(xdata,type="n",xlab="",ylab="data vector",yaxt="n",bty="n")
abline(h=c(3,3.5),lty=2,col="gray")
abline(v=2.825,lwd=2,lty=3)
text(c(0.8,0.8),c(3,3.5),labels=c("x","y"))
points(jitter(c(xdata,ydata)),c(rep(3,length(xdata)),
                                rep(3.5,length(ydata))))

#IQR, Variance, and Standard deviation
var(xdata)
sd(xdata)
IQR(xdata)
sd(ydata)
IQR(ydata)

#For real world datasets
sd(chickwts$weight)
IQR(quakes$mag[quakes$depth<400])
