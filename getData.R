
getData <- function() {
	theData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
	## Our overall goal here is simply to examine how household energy usage varies 
	## over a 2-day period in February, 2007. Your task is to reconstruct the 
	## following plots below, all of which were constructed using the base plotting system.

	## > names(theData)
	## [1] "Date"                  "Time"                  "Global_active_power"  
	## [4] "Global_reactive_power" "Voltage"               "Global_intensity"     
	## [7] "Sub_metering_1"        "Sub_metering_2"        "Sub_metering_3"       
	## > head(theData$Date)
	## [1] 16/12/2006 16/12/2006 16/12/2006 16/12/2006 16/12/2006 16/12/2006
	## 1442 Levels: 10/10/2007 10/10/2008 10/10/2009 10/10/2010 ... 9/9/2010
	
	## year is 4 digits, use capital Y
	theData$Date <- as.Date(theData$Date, "%d/%m/%Y")
	## February, 2007 = ??/02/2007
	## We will only be using data from the dates 2007-02-01 and 2007-02-02. 
	## One alternative is to read the data from just those dates rather than 
	## reading in the entire dataset and subsetting to those dates
	theData <- theData[theData$Date >= as.Date("2007-02-01") & theData$Date <= as.Date("2007-02-02"), ]
	theData$Seq <- sprintf("%s %s", theData$Date, theData$Time)
	theData$Seq <- strptime(theData$Seq, "%Y-%m-%d %H:%M:%S")
	theData$Global_active_power <- as.numeric(theData$Global_active_power)
	theData$Global_reactive_power <- as.numeric(theData$Global_reactive_power)
	theData$Voltage <- as.numeric(theData$Voltage)

	theData$Sub_metering_1 <- as.numeric(theData$Sub_metering_1)
	theData$Sub_metering_2 <- as.numeric(theData$Sub_metering_2)
	theData$Sub_metering_3 <- as.numeric(theData$Sub_metering_3)

	theData
}