#frecuencias
prueba = c(rep("H",6), rep("M",14))

#absolutas
abso=table(prueba)
abso

#relativas
rel = prop.table(abso)
rel

#bidimensional
A = data.frame(sexo = prueba, respuestas =sample(c("si", "no"), size = length(prueba), replace = TRUE), stringsAsFactors = TRUE)
attach(A)
A

library(gmodels)

CrossTable(sexo,respuestas, prop.chisq=FALSE)

prop.table(table(sexo,respuestas))
prop.table(table(sexo,respuestas),  margin = 1)
prop.table(table(sexo,respuestas), margin = 2)



