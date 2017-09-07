source("imageTest.R")
library("TDA")

# datos <- red
# ancho <- ncol(datos)
# alto <- nrow(datos)
# precision <- 1000
# malla <- seq(0, 1, length.out = precision)
# resultado <- array(dim = c(alto, ancho, precision))
# 
# for(j in 1:alto){
#   for(i in 1:ancho){
#     resultado[j,i,] <- distFct(red[j,i],malla)
#   }
# }


aplicar_a_imagen <- function(imagen, precision, funcion){
  ancho <- ncol(imagen)
  alto <- nrow(imagen)
  malla <- seq(0, 1, length.out = precision)
  resultado <- array(dim = c(alto, ancho, precision))
  for(j in 1:alto){
    for(i in 1:ancho){
      resultado[j,i,] <- funcion(red[j,i],malla)
    }
  }
  resultado
}

prueba <- aplicar_a_imagen(red, 1000, distFct)
