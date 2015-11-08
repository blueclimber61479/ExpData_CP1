library(lubridate)

power <- read.table("household_power_consumption.txt", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", na.strings = "?", nrows = 2880, skip = 66637)

power$datetime <- dmy_hms(paste(power$Date, power$Time))

png(file = "plot2.png", width = 480, height = 480)

plot(power$datetime, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()