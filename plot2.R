> # reading relevant data
> data <- read.table("D://Data Science Working Directory//household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
> data <- data %>% mutate(V1 = as.POSIXct(dmy_hms(as.character(paste(V1, V2)))),
+                         V3 = as.numeric(as.character(V3))) %>% select(V1,V3)
> 
> with(data, plot(V1,V3, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))
> 