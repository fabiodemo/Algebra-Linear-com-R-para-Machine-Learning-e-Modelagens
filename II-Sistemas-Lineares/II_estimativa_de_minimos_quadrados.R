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

read_xlsx('concurso.xlsx')