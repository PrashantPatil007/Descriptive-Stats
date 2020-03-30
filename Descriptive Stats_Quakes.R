quakes<-datasets::quakes

library(datasets)
data("quakes")
summary(quakes)
Quakes<-quakes[,3:5]
summary(Quakes)
install.packages(plyr)
library(plyr)
colwise(sd)(Quakes)
colwise(var)(Quakes)
colwise(range)(Quakes)

#Graphical Representation
par(mfrow=c(3,2), mar=c(2,5,2,1), las=0, bty='n')
plot(Quakes$depth, type="p", col='blue')
plot(Quakes$depth, type="l", col='blue')
plot(Quakes$mag, type="p", col="red")
plot(Quakes$mag, type="l", col='red')
plot(Quakes$stations, type="p", col='green')
plot(Quakes$mag, type="l",col="green")

#histogram

hist(Quakes$depth, xlab='Quakes$depth',
        ylab='Frequency',col="blue")
hist(log(Quakes$depth), xlab='Quakes$depth',
     ylab='Frequency',col="blue")
hist(Quakes$mag, xlab='Quakes$depth',
     ylab='Frequency',col="blue")
hist(log(Quakes$mag), xlab='Quakes$depth',
     ylab='Frequency',col="red")
hist(Quakes$stations, xlab='Quakes$depth',
     ylab='Frequency',col="green")
hist(log(Quakes$stations), xlab='Quakes$depth',
     ylab='Frequency',col="green")

#Boxplot

boxplot(Quakes,main="multiple")
