library(lubridate)

power <- read.table("household_power_consumption.txt", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", na.strings = "?", nrows = 2880, skip = 66637)

power$datetime <- dmy_hms(paste(power$Date, power$Time))

png(file = "plot3.png", width = 480, height = 480)

plot(power$datetime, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(power$datetime, power$Sub_metering_2, type = "l", col = "red")
lines(power$datetime, power$Sub_metering_3, type = "l", col = "blue")

legend("topright", pch = "-", lty = c(1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()