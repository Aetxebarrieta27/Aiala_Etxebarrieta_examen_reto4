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
#####ejercicio 2
#a
summary(datos)

sd_minutes<- sd(datos$Minutes, na.rm = TRUE)
sd_seasons<- sd(datos$Seasons, na.rm = TRUE)
#b
length(unique(datos$type))
length(unique(datos$director))
length(unique(datos$country))
#####ejercicio 3

















