source("data_txt.R")

plot1 <- function() {
  #if(is.null(data))
    datos <- data_txt()
  
  png("plot1.png", width=400, height=400)
  
  hist(datos$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}
