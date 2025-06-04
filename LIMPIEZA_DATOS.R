library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readr)
library(smoothmest)
library(VIM)
library(plumber)

datos<- read.csv("C:/Users/aiala/Downloads/netflix.csv")

##### ejercicio 4
summary(datos)
variable<- miss_var_summary(datos) #Seasons: 6133, 69,8%
#a
vis_miss(datos) #MNAR 
#b
imputar<- kNN(datos, k=5)
vis_miss(imputar)# visualizar sin NA´s
unique(imputar["Minutes"])
unique(imputar["Seasons"])




