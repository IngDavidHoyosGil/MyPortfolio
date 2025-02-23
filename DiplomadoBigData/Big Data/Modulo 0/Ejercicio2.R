Calificaciones <- c(1,4,7,8,4,1,2,3,2,4,7,5,3,2,1,4,5,7,9,4,2,3,5,4,7,8,5,10,4,10,5,3,6,7,9,4,2,1,4,7,10,1,
	7,3,5,4,7,8,9,7)

mean(Calificaciones)
median(Calificaciones)

table(Calificaciones)


as.numeric(names(which(table(Calificaciones) == max(table(Calificaciones)))))
