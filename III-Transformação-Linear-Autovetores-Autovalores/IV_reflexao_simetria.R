###########################################################
####### TRANSFORMAÇÃO LINEAR - REFLEXAO OU SIMETRIA #######
###########################################################


# vetor que receberá a transformação
vetorRe <- c(1, 3)
print(vetorRe)

# Coordenadas
x <- c(0, vetorRe[1])
y <- c(0, vetorRe[2])

plot(x, y, type="l")

# pi radiano = 180 graus
# Ângulo de rotação (60 graus = pi/3 radianos)
alfa = (pi/3)

# Matriz de trasnformação
T <- matrix(c(1, 0, 0, -1), nrow=2, byrow=TRUE)
print(T)

# Cálculo para transformação
matrizT <- T %*% vetorRe
matrizT

# Coordenadas do vetor transformado
xT <- c(0, matrizT[1])
yT <- c(0, matrizT[2])


# Gráfico dos vetores
plot(x, y, ylim=range(c(x, yT)), xlim=range(c(x,xT)), type="l", col="red")
lines(xT, yT, col="blue")
