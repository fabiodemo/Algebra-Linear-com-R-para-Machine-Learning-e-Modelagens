#################################################
####### TRANSFORMAÇÃO LINEAR - TRANSLAÇÃO #######
#################################################

# vetor que receberá a transformação
matrizT <- matrix(c(3, 2, 2, 5), nrow=2, byrow=TRUE)
print(matrizT)

# Coordenadas
x <- c(matrizT[1, 1], matrizT[2, 1])
y <- c(matrizT[1, 2], matrizT[2, 2])

plot(x, y, type="l")

# Matriz de transformação
T <- matrix(c(4, 1, 4, 1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
MatrizTr <- T + matrizT
print(MatrizTr)

# Coordenadas do vetor transformado
xT <- c(MatrizTr[1, 1], MatrizTr[2, 1])
yT <- c(MatrizTr[1, 2], MatrizTr[2, 2])

# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")