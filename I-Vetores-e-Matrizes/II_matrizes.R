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
