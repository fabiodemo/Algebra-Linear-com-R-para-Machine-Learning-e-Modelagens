########################
####### MATRIZES #######
########################

# Conjunto de registros com linhas e colunas,
# contendo somente números ou

matrix(data = c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow=TRUE)

matrix(c(1,5,10,39,15,8))

matriz <- matrix(c(4,8,12,16,20,24), nrow=3, ncol=2, byrow=FALSE)
matriz

matriz <- matrix(c(4,8,12,16,20,24), nrow=2, ncol=3, byrow=TRUE)
matriz

matriz[1, 3]

vetorA <- c(2, 5, 8)
vetorB <- c(3, 6, 9)
matriz2 <- rbind(vetorA, vetorB)
matriz2

matriz2[2,1]
matriz3 <- matrix(2:9, ncol=2)
matriz3

# Número de linhas e colunas
dim(matriz3)
nrow(matriz3)
ncol(matriz3)

# Nomear linhas e colunas
dimnames(matriz3) <- list(c("Linha1", "Linha2", "Linha3", "Linha4"),
    c("Coluna1", "Coluna2"))
matriz3

matriz4 <- matrix(2:13, nrow=4, byrow=FALSE, 
dimnames=list(c("Linha1", "Linha2", "Linha3", "Linha4"),
    c("Coluna1", "Coluna2", "Coluna3")))
matriz4

# Matriz com caracteres
matriz5 <- matrix(c("segunda", "terça", "quarta", "quinta"), nrow=2, ncol=2, byrow=FALSE)
matriz5

# TIPOS DE MATRIZES

# Matriz Linha
matriz_linha <- matrix(c(10,30,-15,8), nrow=1)
matriz_linha

# Não confundir com o vetor
vetor <- c(10,30,-15,8)
vetor

# Matrix somente com números 1
matriz1 = matrix(data=1, nrow=8, ncol=7)
matriz1

matriz1 <- matrix(rep(1,12), nrow=3)
matriz1

# Matriz nula
matriz0 <- matrix(rep(0,25), nrow=5)
matriz0

# Matriz Identidade
matriz_ident <- diag(1, nrow=5)
matriz_ident

# Matriz diagonal
matriz_diag <- diag(c(2, -3, 4, 7, 9, -11))
matriz_diag

# Matriz Transposta
matriz <- matrix(c(1, 5, 10, 30, 15, 8), nrow=3, ncol=2, byrow=TRUE)
matriz

matriz_transp <- t(matriz)
matriz_transp

# Matriz oposta
matriz_oposta <- (-1)*(matriz)
matriz_oposta

# MANIPULAÇÃO DE MATRIZES
matriz <- matrix(c(1, 5, 30, 15, 8, 12), nrow=2, ncol=3, byrow=TRUE)
matriz

# Buscando elementos
matriz[1, 2]
matriz[3, 1]
matriz[4, 1] # out of bound
matriz[ , ]
matriz[2, ]
matriz[ , 1]

# Substituindo valores
matriz[1, 2] = 11
matriz

matriz[3, 2] = -12
matriz

# Criando matrizes ou vetores com elementos de outra matriz
matriz2 <- matriz[1, ]
matriz2
class(matriz2)

matriz

matriz3 <- matriz[ , 2]
matriz3

matriz4 <- matriz[1:2, 1:2]
matriz4

# Média das linhas ou colunas
matriz5 <- matrix(c(1, 5, 15, 8), nrow=2, ncol=2, byrow=TRUE)
matriz5

media_coluna <- colMeans(matriz5)
media_coluna

media_linha <- rowMeans(matriz5)
media_linha

# Soma de linhas ou colunas
soma_linhas <- rowSums(matriz5)
soma_linhas

soma_colunas <- colSums(matriz5)
soma_colunas

######################################
####### OPERAÇÕES COM MATRIZES #######
######################################

matrizA <- matrix(c(2, -3, 4, -6, 6, 9), nrow=3, ncol=2, byrow=TRUE)
matrizA

matrizB <- matrix(c(1, 7, -3, 4, 5, -8), nrow=3, ncol=2, byrow=TRUE)
matrizB

# ADIÇÃO E SUBTRAÇÃO DE MATRIZES
somaAB <- matrizA + matrizB
somaAB

somaBA <- matrizB + matrizA
somaBA

# SUBTRAÇÃO DE MATRIZES
subAB <- matrizA - matrizB
subAB

subBA <- matrizB - matrizA
subBA

# MULTIPLICAÇÃO DE MATRIZES POR UM ESCALAR
matrizA
mult1 <- 2 * matrizA
mult1

matrizB
mult2 <- 2 * matrizB
mult2

# MULTIPLICAÇÃO MATRICIAL
produto_matriz <- matrizA %*% matrizB
produto_matriz # Non-conformable arguments

matrizC <- matrix(c(2, 1, 3, 4, 5, 6), nrow=3, ncol=2, byrow=TRUE)
matrizC

matrizD <- matrix(c(7, 8, 0, 10, 5, -2), nrow=2, ncol=3, byrow=TRUE)
matrizD

multCD <- matrizC %*% matrizD
multCD

multDC <- matrizD %*% matrizC
multDC

matrizE <- matrix(c(3, 1, 0, 4), nrow=2, byrow=TRUE)
matrizE

matrizF <- matrix(c(2, 6, -2, 3, 7, 5), nrow=2, byrow=TRUE)
matrizF

multEF <- matrizE %*% matrizF
multEF


multFE <- matrizF %*% matrizE # non-conformable arguments
multFE


#############################################
####### MATRIZ INVERSA E DETERMINANTE #######
#############################################

matrizA <- matrix(c(2, 5, 1, 3), nrow=2, byrow=TRUE)
matrizA

matrizB <- matrix(c(3, -5, -1, 2), nrow=2, byrow=TRUE)
matrizB

mult <- matrizA %*% matrizB
mult

mult <- matrizB %*% matrizA
mult

# MATRIZ INERSA
matriz_invA <- solve(matrizA)
matriz_invA
matrizB

matriz_invB <- solve(matrizB)
matriz_invB
matrizA

matrizC <- matrix(c(-11, 2, 2, -4, 0, 1, 6, -1, -1), nrow=3, byrow=TRUE)
matrizC

matriz_invC <- solve(matrizC)
matriz_invC

mult <- matrizC %*% matriz_invC # Resulta em erros computacionais com valores próximos de 0
mult 

matrizD <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, byrow=TRUE)
matrizD

matriz_invD <- solve(matrizD) # system is computationally singular: reciprocal condition number = 1.54198e-18 

# DETERMINANTE
matrizE <- matrix(c(1, 3, 2, 4, 2, 4, 3, 1, 5), nrow=3, byrow=TRUE)
matrizE

detE <- det(matrizE)
detE

matrizF <- matrix(c(2, 4, 3, 8), nrow=2, byrow=TRUE)
matrizF

detF <- det(matrizF)
detF

matrizG <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, byrow=TRUE)
matrizG

detG <- det(matrizG)
detG # Aproximadamente zero, então podemos considerá-la zero para efeitos de cálculos

matrizH <- matrix(c(1, 3, 0, -2, 1,
                    4, 2, 4, 5, 4,
                    0, 1, 5, -3, 2,
                    -2, 3, 1, 0, 7,
                    0, 1, 9, 3, 2), nrow=5, byrow=TRUE)
matrizH

detH <- det(matrizH)
detH


matrizI <- matrix(c(1, 3, 0, -2, 1,
                    4, 2, 4, 5, 4,
                    0, 1, 5, -3, 2), nrow=3, byrow=TRUE)
matrizI

detI <- det(matrizI) # error: 'x' must be a square matrix
detI

###############################
####### REGRA DE CRAMER #######
###############################

# SISTEMA:
#       x + 2y + 3z = 2
#      2x -  y +  z = -1
#     -2x - 3y + 3z = -11

# Matriz incógnita
matriz <- matrix(c(1, 2, 3, 2, -1, 1, -2, -3, 3), nrow=3, byrow=TRUE)
matriz
dim(matriz)

# Vetor das constantes (matriz coluna)
vetor <- matrix(c(2, -1, -11))
vetor

matriz[, 1]
matrix(matriz[,1])

# Criação da função da Regra de Cramer para sistemas 3x3
cramer3 <- function (A, b) {
    det <- det(A)
    if (det != 0) {
        detx <- det(matrix(c(matrix(b[,1]),matrix(A[,2]),matrix(A[,3])),nrow=3))
        dety <- det(matrix(c(matrix(A[,1]),matrix(b[,1]),matrix(A[,3])),nrow=3))
        detz <- det(matrix(c(matrix(A[,1]),matrix(A[,2]),matrix(b[,1])),nrow=3))
        x = detx/det
        y = dety/det 
        z = detz/det
        print(paste0("O valor de x é: ", round(x, 2)))
        print(paste0("O valor de y é: ", round(y, 2)))
        print(paste0("O valor de z é: ", round(z, 2)))
    }
    else {
        print("Determinante da matriz dos coeficientes é nula")
    }
}

cramer3(matriz, vetor)

# OUTRO SISTEMA:
#      3x +  2y + 7z = 1
#      4x - 29y + 3z = 2
#      2x +  3y + 5z = 2

# Matriz coeficientes
matriz2 <- matrix(c(3, 2, 7, 4, -29, 3, 2, 3, 5), nrow=3, byrow=TRUE)
matriz2
dim(matriz2)

# Vetor das constantes (matriz coluna)
vetor2 <- matrix(c(1, 2, 2))
vetor2

cramer3(matriz2, vetor2) # Determinante da matriz dos coeficientes é nula

# SISTEMA 2x2
#       A +  4B = 200
#      2A +  3B = 180

# Matriz coeficientes
matriz3 <- matrix(c(1, 4, 2, 3), nrow=2, byrow=TRUE)
matriz3

vetor3 <- matrix(c(200, 180))
vetor3

# Criação da função da Regra de Cramer para o sistema 2x2
cramer2 <- function (A, b) {
    det <- det(A)
    if (det != 0) {
        detx <- det(matrix(c(matrix(b[, 1]), matrix(A[, 2])), nrow=2))
        dety <- det(matrix(c(matrix(A[, 1]), matrix(b[, 1])), nrow=2))
        x = detx/det
        y = dety/det
        print(paste0("O valor de x é: ", round(x, 2)))
        print(paste0("O valor de y é: ", round(y, 2)))
    }
    else {
        print("Determinante da matriz dos coeficientes é nula")
    }
}

cramer2(matriz3, vetor3)


# RESOLUÇÃO DE SISTEMAS USANDO O SOLVE:
?solve

solve(matriz, vetor)
solve(matriz2, vetor2) # system is exactly singular: U[3,3] = 0
solve(matriz3, vetor3)

# Matriz incógnita
matriz4 <- matrix(c(1, 2, 3, 2, -1, 1, -2, -3, 3, 2, 1, -3),nrow = 4, byrow = TRUE)
matriz4

# Vetor das constantes (matriz coluna)
vetor4 <- matrix(c(2, -1, -11, 4))
vetor4

solve(matriz4, vetor4) # 'a'  (4 x 3) must be square
