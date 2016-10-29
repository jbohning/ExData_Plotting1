#Plot 4

# Load the Data
setwd("/Users/Ben/Desktop/Jessica Data Science/")
source('Cleaning the Data.R')

#Tell R how to save the plot
png("plot4.png",width=480,height=480)

#Create the 2x2 grid for the plots
par(mfrow=c(2,2))

#Create the actual plot
plot(powerdata$Date_Time,powerdata$Global_active_power, xlab= "",
     ylab="Global Active Power",type='l')

plot(powerdata$Date_Time,powerdata$Volatage,xlab="datetime",ylab="Voltage",
     type='l')

plot(powerdata$Date_Time, powerdata$Sub_metering_1, xlab= "",
     ylab="Energy sub metering",type='l')
lines(powerdata$Date_Time, powerdata$Sub_metering_2,type='l', col="red")
lines(powerdata$Date_Time, powerdata$Sub_metering_3,type='l', col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.75,
       bty="n")

plot(powerdata$Date_Time,powerdata$Global_reactive_power,xlab="datetime",
     ylab="Global_reactive_power", type='l')


#Close png
dev.off()