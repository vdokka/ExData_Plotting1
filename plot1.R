#save the file name to be loaded into dataFile
dataFile <- "C:/Users/vasuvamsi/Documents/Coursera_Data_Science/exploratory_data_analysis_project_1/household_power_consumption.txt"
# read the data into a table 
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#take the subset data which we need for our analysis
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()