#Plot 1

# Load the Data
setwd("/Users/Ben/Desktop/Jessica Data Science/")
source('Cleaning the Data.R')

#Tell R how to save the plot
png("plot1.png",width=480,height=480)

#Create the actual plot
hist(powerdata$Global_active_power,col="red",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency", main="Global Active Power")

#Close png
dev.off()
