source("getData.R")
dt <- getData()
plotName <- "plot3.R"


plot(dt$Sub_metering_1, type="l", 
	main="Global Active Power", 
	ylab="Global Active Power (Kilowatts)",
	ylim=c(0,34))

lines(dt$Sub_metering_2, type="l", col="red")
lines(dt$Sub_metering_3, type="l", col="blue")
