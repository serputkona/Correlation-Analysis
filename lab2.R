getwd()
Suicidal_Behaviours  <- read.csv("GHSH_Pooled_Data1.csv")

library(car)
library(carData)

 #1
pairs(~ Suicidal_Behaviours$Currently_Drink_Alcohol + Suicidal_Behaviours$Use_Marijuana,
      data=States, col = "blueviolet")
plot(Suicidal_Behaviours$Currently_Drink_Alcohol ~ Suicidal_Behaviours$Use_Marijuana,
     col ='darkslategray3')

#2
library(gpairs)
gpairs(Suicidal_Behaviours[,6:8])

cor_ <- cor(Suicidal_Behaviours[,6:8])

cor(Suicidal_Behaviours[,6:8])
cor(Suicidal_Behaviours[,6:8], method = "kendall")
cor(Suicidal_Behaviours[,6:8], method = "spearman")


library(corrplot)
corrplot(cor_, method = "number")
corrplot(cor_, method = "square", order = "hclust")
corrplot.mixed(cor_, order = "hclust", addgrid.col = T)


library(qgraph)
?qgraph()
qgraph(cor_, shape ="square", posCol="lightcoral")
qgraph(cor_, minimum=0.4, posCol="coral",negCol="purple", curveAll=T)


#3

cor.test(Suicidal_Behaviours[,"Overwieght"], Suicidal_Behaviours[,"Use_Marijuana"])
cor.test(Suicidal_Behaviours[,"Overwieght"], Suicidal_Behaviours[,"Use_Marijuana"], method = "kendal")
cor.test(Suicidal_Behaviours[,"Overwieght"], Suicidal_Behaviours[,"Use_Marijuana"], method = "spearman")
