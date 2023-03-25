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

###################################################
####### MODELO DE REGRESSÃO LINEAR MÚLTIPLA #######
###################################################

View(resultado)

# Criação da matriz dos coeficientes
# e acrescentar uma coluna com 1 unidade
resultado["unidade"] <- (resultado$inicio_estudo / resultado$inicio_estudo)
resultado
df3 <- subset(resultado, select=c(unidade, inicio_estudo, tempo_estudo_dia))
df3

B <- data.matrix(df3)
B

# Criação do vetor (matriz de constantes)
df4 <- subset(resultado, select=c(nota))
df4

C <- data.matrix(df4)
C

# Estimativa por mínimos quadrados
x <- solve(t(B) %*% B) %*% (t(B) %*% C)
x

# Equação
# nota =  6.487128816 + (0.041330462 * inicio_estudo) + (0.006442735 * tempo_estudo_dia)

# Construção do modelo de regressão linear multipla no R
modelo <- lm(nota ~ inicio_estudo + tempo_estudo_dia, resultado)
summary(modelo)


# Métricas de desempenho
View(resultado)

# Acrescentando uma coluna comos valores previstos
resultado["previsao2"] <- x[1, 1] + (resultado$inicio_estudo * x[2, 1]) + (resultado$tempo_estudo_dia * x[3, 1])
View(resultado)
resultado


# Erro médio absoluto (MAE)
mae(resultado$nota, resultado$previsao2)

# Erro quadrático médio (MSE) - destaca os erros bem discrepantes
mse(resultado$nota, resultado$previsao2)

# Raiz do erro quadrático médio (RMSE)
rmse(resultado$nota, resultado$previsao2)

print(paste0("MAE previsao1: ", mae(resultado$nota, resultado$previsao), "   |    MAE previsao2: ", mae(resultado$nota, resultado$previsao2)))
print(paste0("MSE previsao1: ", mse(resultado$nota, resultado$previsao), "   |    MSE previsao2: ", mse(resultado$nota, resultado$previsao2)))
print(paste0("RMSE previsao1: ", rmse(resultado$nota, resultado$previsao), "   |   RMSE previsao2: ", rmse(resultado$nota, resultado$previsao2)))