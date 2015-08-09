source("data_txt.R")

plot2 <- function() {
  datos <- data_txt()
  
  png("plot2.png", width=400, height=400)
  
  plot(datos$Time, datos$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}