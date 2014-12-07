######  PLOT 2 ########
source("dataLoad.R") 


#rawdata$Date <- as.POSIXlt(paste(as.Date(rawdata$Date, format="%d/%m/%Y"), rawdata$Time, sep=" "))
png(filename = "plot2.png", width = 480, height = 480, units = "px") 
plot(rawdata$DateTime, rawdata$Global_active_power, type = "l", xlab="",  ylab="Global Active Power (kilowatts)") 
dev.off() 

