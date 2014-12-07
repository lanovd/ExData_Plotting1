######  PLOT 3 ########
source("dataLoad.R") 
 
#rawdata$Date <- as.POSIXlt(paste(as.Date(rawdata$Date, format="%d/%m/%Y"), rawdata$Time, sep=" "))
png(filename = "plot3.png", width = 480, height = 480, units = "px") 
plot(rawdata$DateTime, rawdata$Sub_metering_1, type = "l", xlab="",  ylab="Energy sub metering") 
lines(rawdata$DateTime, rawdata$Sub_metering_2, type = "l", col = "red") 
lines(rawdata$DateTime, rawdata$Sub_metering_3, type = "l", col = "blue") 
legend("topright", lwd=1,  col=c("black", "red", "blue"),  	legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
dev.off() 
