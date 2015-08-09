source("data_txt.R")

plot4 <- function() {
  datos <- data_txt()
  png("plot4.png", width=400, height=400)
  
  par(mfrow=c(2,2))
  # Figura 1
  plot(datos$Time, datos$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
  # Figura 2
  plot(datos$Time, datos$Voltage, type="l",
       xlab="datetime", ylab="Voltage")
  # Figura 3
  plot(datos$Time, datos$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(datos$Time, datos$Sub_metering_2, col="red")
  lines(datos$Time, datos$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  # Figura 4
  plot(datos$Time, datos$Global_reactive_power, type="n",
       xlab="datetime", ylab="Global_reactive_power")
  lines(datos$Time, datos$Global_reactive_power)
  
  dev.off()
  
}