library("data.table")
df=fread("C:/Users/divij.a/Desktop/RPractice/4Expolratory_analysis/household_power_consumption.txt",na.strings="?")
df[["DateTime"]]= as.POSIXct(paste(df[["Date"]],df[["Time"]],sep=" ")
                             ,format="%d/%m/%Y %H:%M:%S")
df<-df[(DateTime>="2007-02-01") & (DateTime<"2007-02-03")]
png("plot4.png",height=480,width=480)
par(mfrow=c(2,2))

#graph1 
plot(df[,DateTime],df[,Global_active_power],type="l",xlab="",ylab="Global Active Power")


plot(df[,DateTime],df[,Sub_metering_1],type="l",xlab="",ylab="Energy Sub_meters")
lines(df[,DateTime],df[,Sub_metering_2],col="red")
lines(df[,DateTime],df[,Sub_metering_3],col="blue")
legend("topright",legend=c("submetering_1","submetering_2","submetering_3"),
       col=c("black","red","blue"),lty="solid")
dev.off()
