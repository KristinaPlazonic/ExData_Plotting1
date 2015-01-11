## plotting the red histogram

df <- read.csv("household_power_consumption.txt", sep = ";", 
               na.strings = c("?"), stringsAsFactors=FALSE)

## take the subset of the data - 
## I spent so much time on it because I assumed it would be 01/02/2007
good1 <- df$Date == "1/2/2007" | df$Date == "2/2/2007"
df <- df [good1,]

hist(df$Global_active_power, 
     col = "red",
     main = "Global active power", 
     xlab = "Global active power (kilowatts)")

png("plot1.png", width = 480, height = 480) #setting up the device
hist(df$Global_active_power,
     col = "red",
     main = "Global active power", 
     xlab = "Global active power (kilowatts)")
dev.off()




