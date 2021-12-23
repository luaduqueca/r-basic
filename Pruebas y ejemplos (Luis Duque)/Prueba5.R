datos <- read.table("../r-basic/data/datacrab.txt", head =TRUE)
datos = datos[,-1]

subconjunto <- subset(datos, color ==3, c(3,5))

summary(subconjunto)

boxplot(width~color,data=datos, notch=TRUE)


cangrejos = datos
cw = cangrejos$width

color_clas = as.factor(cangrejos$color)

h = hist(cw, breaks = 10, col = "red", freq = FALSE)
densidad = density(cw)
lines(densidad)

str(cangrejos)

