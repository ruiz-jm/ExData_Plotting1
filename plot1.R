#code for reading the data
hpc<-read.table('household_power_consumption.txt',skip=66637,nrows=2879,sep=";")
names(hpc)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hpc[,1]<-as.Date(hpc[,1],format="%d/%m/%Y")
 




#code for ploting


png("plot1.png", width = 480, height = 480)
hist(as.numeric(hpc$Global_active_power),main='Global Active Power',col='red',xlab='Global Active Power (kilowatts)')
 dev.off()

