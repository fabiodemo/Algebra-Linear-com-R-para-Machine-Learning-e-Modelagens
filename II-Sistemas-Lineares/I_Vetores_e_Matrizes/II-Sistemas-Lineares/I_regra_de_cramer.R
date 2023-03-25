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
