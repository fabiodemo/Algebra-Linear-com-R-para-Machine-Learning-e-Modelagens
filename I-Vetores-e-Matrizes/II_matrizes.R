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

# ADIÇÃO E SUBTRAÇÃO DE MATRIZES
