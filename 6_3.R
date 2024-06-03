#6/3
install.packages("plotly")
library(plotly)
library(ggplot2)

mydat<-airquality
mydat<-na.omit(mydat)
mydat
fig1<- plot_ly(x= -mydat$Ozone, type="histogram")
fig1

fig2<- plot_ly(x= -mydat$Solar.R, type="histogram")
fig2

getwd()
