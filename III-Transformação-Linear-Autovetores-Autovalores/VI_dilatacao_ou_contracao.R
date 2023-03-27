###########################################################################
####### TRANSFORMAÇÃO LINEAR - ALONGAMENTO (DILATAÇÃO) OU CONTRAÇÃO #######
###########################################################################

# vetor que receberá a transformação
vetorA <- c(4, 2)
print(vetorA)

# DILATAÇÃO

# Constante:
# Alongamento: k > 1
# Contração: 0 < k < 1
k <- 2

# DILATAÇÃO NO EIXO X
# Coordenadas
x <- c(0, vetorA[1])
y <- c(vetorA[2], vetorA[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(k, 0, 0, 1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(0+6, matrizT[1]+6)
yT <- c(matrizT[2], matrizT[2])


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")

# DILATAÇÃO NO EIXO Y
# Coordenadas
x <- c(vetorA[2], vetorA[2])
y <- c(0, vetorA[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(1, 0, 0, k), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(matrizT[1], matrizT[1])
yT <- c(0+4, matrizT[1]+4)


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")


####################################

# CONTRAÇÃO

# Constante:
# Alongamento: k > 1
# Contração: 0 < k < 1
k <- 0.5

# CONTRAÇÃO NO EIXO X
# Coordenadas
x <- c(0, vetorA[1])
y <- c(vetorA[2], vetorA[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(k, 0, 0, 1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(0+6, matrizT[1]+6)
yT <- c(matrizT[2], matrizT[2])


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")


# CONTRAÇÃO NO EIXO Y
# Coordenadas
x <- c(vetorA[2], vetorA[2])
y <- c(0, vetorA[2])

plot(x, y, type="l")

# Matriz de trasnformação
T <- matrix(c(1, 0, 0, k), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorC
matrizT

# Coordenadas do vetor transformado
xT <- c(matrizT[1], matrizT[1])
yT <- c(0+4, matrizT[1]+4)


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")