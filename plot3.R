source("data_txt.R")

plot3 <- function() {
  datos <- data_txt()
  
  png("plot3.png", width=400, height=400)
  
  plot(datos$Time, datos$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(datos$Time, datos$Sub_metering_2, col="red")
  lines(datos$Time, datos$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
}