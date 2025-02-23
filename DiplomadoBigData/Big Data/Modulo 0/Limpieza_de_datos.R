#Cargar el dataset

London_air <- read.csv("C:/Users/david/Desktop/Londonair.csv")

class(London_air)
dim(London_air)
names(London_air)
str(London_air)
summary(London_air)


head(London_air)
tail(London_air)

hist(London_air$Value,
     main = "PM2.5 en la ciudad de Londres",
     xlab = "Concentración (ug/m^3)",
     xlim = c(0,100),
     col = rainbow(10))

hist(London_air$Value,
     main = "PM2.5 en la ciudad de Londres, año 2018",
     xlab = "Concentración (ug/m^3)",
     ylab = "Frecuencia",
     xlim = c(0,100),
     col = 1:20,
     freq = TRUE,
     breaks = 40)

boxplot(London_air$Value)

boxplot(London_air$Value,
        main = "PM2.5 en la ciudad de Londres, año 2018",
        xlab = "Concentración (ug/m^3)",
        ylab = "PM2.5",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE)


#Instalar el paquete
install.packages("tidyverse")

#Cargar la libreria
library("tidyverse")

glimpse(London_air)

#Pipelines
log(sin(exp(2)))

2 %>% exp() %>% sin() %>% log()

#Ver los distintos valores que toma Value
London_air %>% distinct(Value)

#Contar los valores únicos 
London_air %>% summarise(n = n_distinct(Value))

#Contar NA
London_air %>% summarise(count = sum(is.na(Value)))

#Contar NAN
London_air %>% summarise(count = sum(is.nan(Value)))

#Contar, valores perdidos, mediana
London_air %>% summarise(
  n = n_distinct(Value),
  na = sum(is.na(Value)),
  med = median(Value, na.rm = TRUE)
)

#Mutar valores faltantes
London_air <- London_air %>% mutate(Value = replace(Value,
                                      is.na(Value),
                                      median(Value, na.rm = TRUE)))

London_air %>% summarise(n = sum(is.na(Value)))


#Mutar valores negativos

London_air %>% summarise(count = sum(Value < 0))

London_air <- London_air %>% mutate(Value = replace(Value,
                                      Value < 0,
                                      median(Value, na.rm = TRUE)))

#Variable temporal
London_air <- London_air %>% mutate(ReadingDateTime = as.POSIXct(ReadingDateTime,
                                                   format = "%d/%m/%Y %H:%M"))

glimpse(London_air)
str(London_air$ReadingDateTime)

##Eliminar valores anómalos
#Inspeccion visual
London_air %>% filter(Value <= 150)

#Basado en cuartiles
Q1 <- quantile(London_air$Value, 0.25, na.rm = TRUE)
Q3 <- quantile(London_air$Value, 0.75, na.rm = TRUE)
IQR <- Q3 - Q1

#Limites para detectar outliers
limite_inferior <- Q1 - 1.5 * IQR
limite_superior <- Q3 + 1.5 * IQR

#Filtrar los valores atípicos por cuartiles
London_air <- London_air %>% filter(Value >= limite_inferior & Value <= limite_superior)
