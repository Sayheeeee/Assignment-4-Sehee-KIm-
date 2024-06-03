airquality

str(airquality)

#plot
par(mfrow = c(2, 3))

hist(airquality$Ozone, main="Histogram of Ozone", col="blue")

barplot(table(airquality$Month), main="Bar Chart of Month", col="green")

boxplot(airquality$Solar.R, main="Box Plot of Solar.R", col="pink")

plot(airquality$Ozone,airquality$Solar.R , main="Scatter Plot of Ozone vs Solar.R", col="red", pch=14)
plot(airquality$Ozone, airquality$Wind, main="Scatter Plot of Ozone vs Wind", col="purple", pch=19)


plot(airquality$Ozone,airquality$Solar.R , main="Scatter Plot of Ozone vs Solar.R", col="red", pch=14)
abline(lm(Solar.R ~ Ozone, data = airquality), col="blue")


