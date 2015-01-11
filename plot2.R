## plotting the time series

df <- read.csv("household_power_consumption.txt", sep = ";", 
               na.strings = c("?"), stringsAsFactors=FALSE)

## take the subset of the data - 
## I spent so much time on it because I assumed it would be 01/02/2007
good1 <- df$Date == "1/2/2007" | df$Date == "2/2/2007"
df <- df [good1,]


#mydf = df[0:10, ]  # testing a small dataset
# I got this from a Stack Overflow post which I can't chase down now... 

df$MyDate <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%OS")


png("plot2.png", width = 480, height = 480) #setting up the device
with(df, {
  plot(MyDate, Global_active_power, type = "n",
       xlab = "",
       ylab = "Global active power (kilowatts)")
  lines(MyDate, Global_active_power)
})
dev.off()