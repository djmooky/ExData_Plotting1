source("getData.R")
dt <- getData()
plotName <- "plot1.R"

dt$Global_active_power <- dt$Global_active_power / 1000
hist(dt$Global_active_power, col="red",
	main="Global Active Power", xlab="Global Active Power (Kilowatts)")

