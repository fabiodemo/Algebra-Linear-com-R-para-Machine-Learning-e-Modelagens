#######################
####### VETORES #######
#######################

# Sequência de valores numéricos ou caracteres

vetor <- c(1, 2, 3, 4, 5, 6, 7)
class(vetor)

dias <- c("segunda", "terça", "quarta", "quinta", "sexta", "sábado", "domingo")
dias
class(dias)

juntando <- c(vetor, dias)
class(juntando)
juntando

gastos_dia <- c(400, 300, 100, 500, 150, 430, 70)
gastos_dia
length(gastos_dia)

ordem_crescente <- sort(gastos_dia)
ordem_crescente
class(ordem_crescente)
minimo <- min(gastos_dia)
max <- max(gastos_dia)
media <- mean(gastos_dia)
minimo
max
media

limite <- (gastos_dia <= 300)
limite

intervalo <- (3:8)
intervalo

passo <- seq(2, 42, by=5)
passo

repeticao <- rep(2, 8)
repeticao

repeticao_multipla <- rep(c(3,5), c(4,6))
repeticao_multipla

repeticao_programada <- rep(3:5, each = 3)
repeticao_programada

repeticao_programada_2 <- rep(3:5,3)
repeticao_programada_2

vetor2 <- c(2,4,6,8,10,12)
vetor3 <- c(vetor2,14)
vetor3
class(vetor3)

vetor4 <- c(vetor3, "pares")
class(vetor4)

posicao <- vetor2[2]
posicao

posicao_inexistente <- vetor2[7]
posicao_inexistente

posicao_excluida <- vetor2[-3]
posicao

# Exclui elemento na determinada posição
vetor2[-1]

alfabeto <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')
class(alfabeto)

print(paste0(alfabeto[1], alfabeto[12], alfabeto[7], alfabeto[5], alfabeto[2], alfabeto[18], alfabeto[1]))


#####################################
####### OPERAÇÕES COM VETORES #######
#####################################

# Criação de Vetores
u <- c(2, -4, 1)
u

v <- c(3, 2, -5)
v

# Soma vetorial
soma <- u + v
soma

# Produto
produto <- u * v
produto

# Produto interno
produto_interno <- u %*% v
produto_interno

# Multiplicação por um escalar
multiplicacao <- 5*u
multiplicacao

multiplicacao2 <- 5*v
multiplicacao2

prod_int <- (5*u) %*% (3*v)
prod_int

#######################

# Norma
print(u)