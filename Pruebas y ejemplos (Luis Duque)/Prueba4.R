longitudes <- sample(c("normal", "largo","muy.corto", "corto", "muy.largo"), size = 100, replace = TRUE)
longitudes = ordered(longitudes, levels =(c("muy.corto", "corto", "normal", "largo", "muy.largo")))
zona <- rep(c("A","B", "C", "D"),c(30,25,35,10))

jirafas <- data.frame(zona = as.factor(zona), longitudes)

head(jirafas)
table(jirafas)

apply(table(jirafas), MARGIN = 1, FUN = cumsum)

#grafico
diagrama <- apply(prop.table(table(jirafas),margin = 1), FUN = cumsum, MARGIN = 1)

barplot(diagrama, beside = TRUE, xlab = "zona", legend=TRUE)


crabs <- read.table("../r-basic/data/datacrab.txt", header = TRUE, )
crabs <- crabs[,-1]

intervalos = cut(crabs$width, breaks = c(21,25,29,33,Inf), right = FALSE, labels = c("21-25","25-29","29-33","33-...") )

#graficos
crabs$width.rank <- ordered(intervalos)

tabla = table(crabs[,c(1,6)])
tabla

tabla_rel_fila <- round(prop.table(tabla, margin = 1),2)
tabla_rel_fila

tabla_rel_fila_cumsum <- sapply( tabla_rel_fila, MARGIN = 1, FUN =  cumsum)
tabla_rel_fila_cumsum

library(colormap)

barplot(tabla_rel_fila_cumsum, beside = TRUE, legend=TRUE, col = colormap(colormap = colormaps$temperature, nshades = 4))

