library("data.table")
df=fread("C:/Users/divij.a/Desktop/RPractice/4Expolratory_analysis/household_power_consumption.txt",na.strings="?")
df$Date<-as.Date(df$Date,"%d/%m/%Y")
df<-df[(Date>="2007-02-01") & (Date<"2007-02-03")]
df[["Time"]]<-strptime(df[["Time"]],"%H:%M:%S")
png("plot1.png")
hist(df$Global_active_power,col="red",xlab = "Gobal Active Power(kilowatts",main="Global Active Power")
dev.off()