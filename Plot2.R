##Extraction and loading of data
DataDir <- "C:/Users/cheryljeanne/Documents/Git/Exploratory Data Analysis - CP1"
filename <- "exdata_data_household_power_consumption.zip"
dataFile <- paste(DataDir, "/", filename, sep = "")
unzip(zipfile = dataFile, exdir = dataDir)
data <- read.table(paste(sep = "", "./data/", "household_power_consumption.txt"), header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


##PLOT 2
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()