source("getData.R")
dt <- getData()
plotName <- "plot2.R"

# dt$Date <- as.character(dt$Date)
# gsub("2007-02-01", "Thu", dt$Data)
# gsub("2007-02-02", "Fri", dt$Data)
# gsub("2007-02-03", "Sat", dt$Data)

plot(dt$Global_active_power, type="l", 
	main="Global Active Power", 
	ylab="Global Active Power (Kilowatts)")
