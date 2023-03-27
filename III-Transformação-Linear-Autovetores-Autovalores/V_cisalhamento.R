###################################################
####### TRANSFORMAÇÃO LINEAR - CISALHAMENTO #######
###################################################


# vetor que receberá a transformação
vetorC <- c(2, 2)
print(vetorC)

# Constante cisahante
k <- 3

# Coordenadas
x <- c(vetorC[1], vetorC[2])
y <- c(0, vetorC[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(1, k, 0, 1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(matrizT[2]+2, matrizT[1])
yT <- c(0, matrizT[2])


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")

# CISALHAMENTO NO EIXO Y
# Coordenadas
x <- c(0, vetorC[1])
y <- c(vetorC[2], vetorC[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(1, 0, k, 1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(0, matrizT[1])
yT <- c(matrizT[1], matrizT[2])

# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")
