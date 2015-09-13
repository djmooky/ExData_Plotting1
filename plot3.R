source("getData.R")
if (!exists("theData"))
	theData <- getData()

png("plot3.png", width=480, height=480)
plot(theData$Seq, theData$Sub_metering_1, type="l", 
	main="Global Active Power", 
	ylab="Global Active Power (Kilowatts)",
	xlab="")

lines(theData$Seq, theData$Sub_metering_2, type="l", col="red")
lines(theData$Seq, theData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
	lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
dev.off()


