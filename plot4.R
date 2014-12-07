######  PLOT 4 ########
source("dataLoad.R") 

png(filename = "plot4.png", width = 480, height = 480, units = "px") 
par (mar = c(4,4,2,1), mfrow = c(2,2), oma = c(0,0,2,0)) 
with(rawdata, { 
    plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l") 
     plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l") 
     plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering") 
     lines(DateTime, Sub_metering_2, type="l", col="red") 
     lines(DateTime, Sub_metering_3, type="l", col="blue") 
     legend("topright", lwd=1, bty="n",  col=c("black", "red", "blue"),  	legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
     plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")         
 })     
 dev.off() 
