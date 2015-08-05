source("getData.R")
if (!exists("theData"))
	theData <- getData()

png("plot2.png", width=480, height=480)
plot(theData$Seq, theData$Global_active_power, type="l", 
	main="Global Active Power", 
	ylab="Global Active Power (Kilowatts)",
	xlab="")
dev.off()