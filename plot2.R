household_sub$New_Time = paste(household_sub$Date, household_sub$Time, sep = " ")

New_Time <- as.vector(household_sub[["New_Time"]])

New_Time <- strptime(New_Time, "%Y-%m-%d %H:%M:%OS")

plot(New_Time, a.vector, type = "l", ylab = "Global Active Power (kilowats)", xlab = "Time")
dev.copy(png, "Global_Active_Power_vs_Time.png")
dev.off()