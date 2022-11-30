1 + 2 + 3
install.packages("rmarkdown")

## Practicando 
library(readr)
library("nortest")
library(ggplot2)

data <- read.csv("D:/R/Testing2/Datos_Agro.csv", header = TRUE, sep = ";")
View(data)

# Los datos tienen 3 fechas, la primera antes de la aplicacion, las dos posteriores dsps

# histograma y prueba de normalidad

ggplot(data) + geom_histogram(aes(x=frutos,y=..count..),binwidth = 1)

lillie.test(data$frutos)
qqnorm(data$frutos)

## cómo extraer los datos solo de las fechas (fecha 1 y fecha 2 por separado)?
