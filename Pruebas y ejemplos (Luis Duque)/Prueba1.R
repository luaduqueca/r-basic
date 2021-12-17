persona=c("Andrea", "Carolina", "Irene", "Daniel")
peso = c(20, 30, 40, 50)
altura = c(1.8, 1.7, 1.55, 1.9)

datos <- data.frame(persona, peso, altura)
datos

colnames(datos) = c("personitas", "pesitos", "alturita")
datos

#seleccionar con tidyverse

datos_pe = select(datos, starts_with("pe"))
datos_pe