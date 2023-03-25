################################################
####### ESTIMATIVA POR MÍNIMOS QUADRADOS #######
################################################

# Análise e tratmento inicial
install.packages("dplyr")
library(dplyr)

# Setar o diretório
setwd("II-Sistemas-Lineares")
getwd()

# Abrir arquivo
library(readxl)
notas <- read_xlsx('concurso.xlsx')
View(notas)

#  5x + 120y = 8.1
# 13x +  90y = 6.8
# 20x + 120y = 7
# 28x +  60y = 7.4
# 20x + 150y = 9.3

dim(notas)

# VERIFICAÇÃOO DO TIPO DAS VARIÁVEIS
# (RELEMBRANDO) EXISTEM 7 TIPOS BÁSICOS NO R:
# character
# integer
# numeric
# logical
# complex
# factor
# date

str(notas)
glimpse(notas)

notas$nota <- as.numeric(notas$nota)
str(notas)

# Verificando Missing Values
sapply(notas, function(x) sum(is.na(x)))
sapply(notas, function(x) sum(is.nan(x)))

# Criação da matriz dos coeficientes
df <- subset(notas, select=c(inicio_estudo, tempo_estudo_dia))
View(df)

A <- data.matrix(df)
A

# Criação da matriz das constantes
df2 <- subset(notas, select=c(nota))
View(df2)

b <- data.matrix(df2)
b


# ESTIMATIVA POR MÍNIMOS QUADRADOS
# Transposta de A
At <- t(A)
At

# Multiplicação da Transposta de A pela matriz A
AtA <- At %*% A
AtA

# Inversa da matriz calculada anteriormente
inv <- solve(AtA)
inv

# Multiplicação da Transposta de A pela matriz b
Atb <- At %*% b
Atb

# Multiplicação da inversa pela Atb
x <- inv %*% Atb
x

# EQUAÇÃO: nota  0.18391143*inicio_estudo + 0.04140823*tempo_estudo_dia

x <- solve(At %*% A) %*% (At %*% b)
x

# Métricas do desempenho
install.packages("Metrics")
library(Metrics)

resultado <- notas
View(resultado)

# Acrescentando uma coluna comos valores pervistos
resultado["previsao"] <- (resultado$inicio_estudo * x[1, 1]) + (resultado$tempo_estudo_dia * x[2, 1])

# Acrescentando uam coluna como erro absoluto
resultado["erro_abs"] <- abs(resultado$nota - resultado$previsao)
resultado

# Erro médio absoluto (MAE)
mae(resultado$nota, resultado$previsao)

# Erro quadrático médio (MSE) - destaca os erros bem discrepantes
mse(resultado$nota, resultado$previsao)

# Raiz do erro quadrático médio (RMSE)
rmse(resultado$nota, resultado$previsao)