household_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

household_data$Date <- as.Date(household_data$Date, "%d/%m/%Y")

household_sub <- subset(household_data, Date == "2007-02-01" | Date == "2007-02-02")

a.vector <- as.vector(household_sub[["Global_active_power"]])

hist(as.numeric(a.vector), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowats)")
dev.copy(png, "Global_Active_Power.png")
dev.off()