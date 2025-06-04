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
library(ggplot2)
library(plumber)
datos<- read.csv("C:/Users/aiala/Downloads/netflix.csv")

api_examen<- "

#* @apiTitle API examen reto 4
#* @apiDescription  API que trabaja sobre la variable Minutes del dataframe de películas
#* @param Minutes
#* @get/ Minutes

function(Minutes){
  Minutes<- as.numeric(Minutes)
    datos$Minutes<- log(datos$Minutes)
    return(hist(datos$Minutes))
}
histo<- ggplot(datos, aes(x=Minutes))+
geom_histogram()
"

writeLines(api_examen, "api.R")
r<- plumb("api.R")
r$run(port = 8000)







