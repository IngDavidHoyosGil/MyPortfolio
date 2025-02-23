data(iris)
iris

length(iris$Sepal.Length)

plot(iris$Sepal.Length, 
     ylab = "Largo del Sépalo",
     xlab = "Índice",
     col = "red",
     main = "Largo del Sépalo")

plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Ancho del Sépalo en función del largo del Sépalo")

par(mfrow = c(1,3))

plot(iris$Petal.Length, iris$Petal.Width)


table(iris$Species)
barplot(table(iris$Species),
        xlab = "Tipo de flor",
        ylab = "Cantidad")

par(mfrow = c(1,1))

