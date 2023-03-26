################################################
####### TRANSFORMAÇÃO LINEAR - HOMOTETIA #######
################################################

# vetor que receberá a transformação
vetorH <- c(2, 1)
print(vetorH)

x <- c(vetorH[1], 0)
y <- c(0, vetorH[2])

plot(x, y, type="l")

# Parâmetro de proporação
k <- 3

# Matriz de transformação
T <- matrix(c(k, 0, 0, k), nrow=2, ncol=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorH
print(matrizT)

# Coordenadas do vetor transformado
xT <- c(matrizT[1], 0)
yT <- c(0, matrizT[2])

# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")
