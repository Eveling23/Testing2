1 + 2 + 3
install.packages("rmarkdown")
install.packages("dplyr")


## Practicando 
library(readr)
library("nortest")
library(ggplot2)
library(dplyr)


data <- read.csv("D:/R/Testing2/Datos_Agro.csv", header = TRUE, sep = ";")
View(data)

#ZERO-INFLATED POISSON REGRESSION 
install.packages("pscl")
install.packages("boot")
summary(data$frutos)

# histogram with x axis in log10 scale
ggplot(data, aes(frutos)) + geom_histogram() + scale_x_log10()

##No se entiende lo de poisson, sgte:
## Una forma
data2 = data[data$fecha=="4/09/2019"|data$fecha=="25/09/2019",]

## otra forma (paquete dyplr)
data2 <- filter(data,fecha=="4/09/2019"|fecha =="25/09/2019")
View(data2)




