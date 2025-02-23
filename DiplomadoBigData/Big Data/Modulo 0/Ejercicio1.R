mascota <- factor(c(1,2,4,2,2,1,3,1,1,1,1,2,1,2,1,3,1,1,1,2,2,1,1,1,4,1,2,2,4,1,1,3,3,2,4,1,2,2,1,4,1),
 labels = c("Gato", "Perro", "Conejo", "Pájaro"))
mascota

tabla_freq <- data.frame(table(mascota))
tabla_freq

N <- length(mascota)
tabla_freq_rel <- data.frame(table(mascota)/N)
tabla_freq_rel


barplot((table(mascota)), 
	col = c("red", "blue", "green", "pink"),
	main = "Historia para la variable mascota")


barplot((table(mascota)/N), 
	col = c("red", "blue", "green", "pink"),
	main = "Diagrama de frecuencias relativas para la variable mascota")



edad <- c(16,16,16,15,17,18,17,17,17,17,17,16,16,16,17,18,19,15,18,18,19,19,19,17,18,15,17,20,
	20,20,21,15,16,15,19,17,18,17,19,29,14,16,17,25,19,17,17,16,17,18,19,17,15,14,16,
	18,19,18,17,17,18,19,17,16,16,16,16,16)

hist(edad,
	col = rainbow(3),
	main = "Histograma para la variable edad")

boxplot(edad,
	ylab = "Edad",
	col = "blue",
	main = "Diagrama de caja para la variable Edad")

