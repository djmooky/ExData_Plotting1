source("getData.R")
if (!exists("theData"))
	theData <- getData()

png("plot1.png", width=480, height=480)
theData$Global_active_power <- theData$Global_active_power / 1000
hist(theData$Global_active_power, col="red",
	main="Global Active Power", xlab="Global Active Power (Kilowatts)")
dev.off()