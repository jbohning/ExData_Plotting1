#Plot 2

# Load the Data
setwd("/Users/Ben/Desktop/Jessica Data Science/")
source('Cleaning the Data.R')

#Tell R how to save the plot
png("/Users/Ben/Desktop/Jessica Data Science/Plot 2.png",width=480,height=480)

#Create the actual plot
plot(powerdata$Date_Time,powerdata$Global_active_power, xlab= "",
     ylab="Global Active Power (kilowatts)",type='l')

#Close png
dev.off()