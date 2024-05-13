#assignment4
getwd()
id<-c(1:10)
height<-rnorm(10,168);height
weight<-rnorm(10,70)
diabetes<-c(rep(1,5),rep(0,5))
library(data.table)

data_table_1<-data.table(id,height,weight,diabetes)
data_table_1

smoke<-c(rep(1,5),rep(0,5))
drink_weekly<-c(seq(20,1,by=-2));drink_weekly

data_table_2<-data.table(id,smoke,drink_weekly)

#NA values
data_table_1$weight[c(1,5)]<-NA
data_table_2$drink_weekly[c(2,5)]<-NA

#join data tables 
setkey(data_table_1,id)
data_table_3<-merge(data_table_1,data_table_2)
data_table_3

#remove NA values
data_table_3<-data_table_3[complete.cases(data_table_3),]
data_table_3
