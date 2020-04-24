library("data.table")
df=fread("C:/Users/divij.a/Desktop/RPractice/4Expolratory_analysis/household_power_consumption.txt",na.strings="?")
df[["DateTime"]]= as.POSIXct(paste(df[["Date"]],df[["Time"]],sep=" ")
                             ,format="%d/%m/%Y %H:%M:%S")
df<-df[(DateTime>="2007-02-01") & (DateTime<"2007-02-03")]
png("plot2.png",height=480,width=480)
plot(df[,DateTime],df[,Global_active_power],type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()


