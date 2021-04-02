#code for reading the data
hpc<-read.table('household_power_consumption.txt',skip=66637,nrows=2879,sep=";")
names(hpc)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hpc[,1]<-as.Date(hpc[,1],format="%d/%m/%Y")
 




#code for ploting

len<-length(as.numeric(hpc$Global_active_power))/2
len2<-len*2
png("plot3.png", width = 480, height = 480)
plot(as.numeric(hpc$Sub_metering_1),type='l',ylab='Energy metering',xlab='', xaxt="n")
lines(as.numeric(hpc$Sub_metering_2), col="red")
lines(as.numeric(hpc$Sub_metering_3), col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), fill=c("black","blue","red"))

axis(1  , at=c(1, len, len2), labels=c("Thu", "Fri", "Sat"))
  dev.off()