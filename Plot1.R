##Extraction and loading of data
DataDir <- "C:/Users/cheryljeanne/Documents/Git/Exploratory Data Analysis - CP1"
filename <- "exdata_data_household_power_consumption.zip"
dataFile <- paste(DataDir, "/", filename, sep = "")
unzip(zipfile = dataFile, exdir = dataDir)
data <- read.table(paste(sep = "", "./data/", "household_power_consumption.txt"), header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


##PLOT 1
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

