datos = HairEyeColor

male <- datos[,,"Male"]
female <- datos[,,"Female"]

datos2 = as.table(male+female)

dimnames(datos2) <- list(
  cabello <- c("negro", "marron", "pelirojo", "rubio"),
  c("cafe", "azul", "pardo", "verde") -> ojos
)

plot(datos2, col= c("lightblue"), xlab = "cabello", ylab = "ojos")

plot(datos, col=c("lightblue", "green"))

#cantidad de individuos
sum(datos2)

#frecuencias
#sumatorias por color de ojos
apply(datos2, MARGIN = 2, FUN= sum)
#sumatorias por color de cabello
apply(datos2, MARGIN = 1, FUN= sum)

#Alternativa
colSums(datos2)
rowSums(datos2)

#relativas
rel_ojos <- prop.table(colSums(datos2))
rel_pelo <- prop.table(rowSums(datos2))

barplot(rel_ojos, col = 1:4)
barplot(rel_pelo, col = 5:9)

#relativas por fila y columna

rel_fila = prop.table(datos2, margin = 1)
rel_col = prop.table(datos2, margin = 2)

#Graficos finales
barplot(rel_fila, beside = TRUE)

