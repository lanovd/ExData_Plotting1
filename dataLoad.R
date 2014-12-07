#Load data  dataLoad.R file

setInternet2(use = TRUE)
suppressWarnings(library(lubridate))
#setwd("E:/R")

 # If the raw data has not been saved, download, unzip, and load it. 
 if (!file.exists('power-data.rds')) { 
     fileUrl1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
     download.file(url=fileUrl1, destfile="raw-power-data.zip")
	 unzip('raw-power-data.zip') 
# Read data into table, strip data from the dates 2007-02-01 and 2007-02-02
    rawdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")) 
    rawdata <- rawdata[(rawdata$Date == "1/2/2007") | (rawdata$Date == "2/2/2007"),] 
	rawdata$DateTime <- strptime(paste(rawdata$Date, rawdata$Time), "%d/%m/%Y %H:%M:%S") 
    rawdata$Date <- as.Date(rawdata$Date, format="%d/%m/%Y")
}

