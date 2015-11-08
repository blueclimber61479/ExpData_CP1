power <- read.table("household_power_consumption.txt", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", na.strings = "?", nrows = 2880, skip = 66637)

png(file = "plot1.png", width = 480, height = 480)

hist(power$Global_active_power, main = "Global Active Power (kilowatts)", col = "red", xlab = "Global Active Power")

dev.off()