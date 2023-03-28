#####################################
####### Análise dos Componentes Principais (PCA) #######
##################################### 

library(dplyr)

getwd()
setwd("III-Transformação-Linear-Autovetores-Autovalores")

# Abrir arquivo com a massa de dois componentes químicos
massa <- read.csv("inspecao.csv", sep=";")
str(massa)

# Verificação do tipo de atributos
dim(massa)

# Verificando valores ausentes
sapply(massa, function(x) sum(is.na(x)))
sapply(massa, function(x) sum(is.nan(x)))

# Excluir valor NA
massa2 <- na.omit(massa)
massa2
sapply(massa2, function(x) sum(is.na(x)))

dim(massa2)

# Criação da Matriz de covariância
matriz <- subset(massa2, select=c(A,B))
matriz

matriz_cov <- cov(matriz)
matriz_cov

autov <- eigen(matriz_cov)
autov

# O autovalor 1.052 está associado aos autovetores -0.73 e -0.6821
# O autovalor 0.1042 está associado aos autovetores 0.6821 e -0.7312

# Cálculo da Taxa de Variância Explicada (EVR)
EVR <- autov$values / sum(autov$values)
EVR

# Os componentes principais, neste caso, srão os autovetores -0,731 e -0.682