source("getData.R")
if (!exists("theData"))
	theData <- getData()

png("plot4.png", width=480, height=480, )
par(mfrow=c(2,2))

# top left
plot(theData$Seq, theData$Global_active_power, type="l", 
	ylab="Global Active Power (Kilowatts)",
	xlab="")

# top right
plot(theData$Seq, theData$Voltage, type="l", 
	ylab="Voltage",
	xlab="Datetime")

# bottom left
plot(theData$Seq, theData$Sub_metering_1, type="l", 
	ylab="Global Active Power (Kilowatts)",
	xlab="")
lines(theData$Seq, theData$Sub_metering_2, type="l", col="red")
lines(theData$Seq, theData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
	lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

# bottom right
plot(theData$Seq, theData$Global_reactive_power, type="l",
	ylab="Global Reactive Power",
	xlab="Datetime")
dev.off()