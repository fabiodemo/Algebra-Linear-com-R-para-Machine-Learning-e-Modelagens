#####################################
####### AUTOVALOR E AUTOVETOR #######
##################################### 


A <- matrix(c(3, 0, 0, 1), nrow=2, byrow=TRUE)
print(A)

eigen(A)
# O autovalor 3 está associado aos autovetores -1 e 0
# O autovalor 1 está associado aos autovetores 0 e -1

B <- matrix(c(4, -3, 2, -1), nrow=2, byrow=TRUE)
B

eigen(B)
# O autovalor 2 está associado aos autovetores 0.833 e 0.555 
# O autovalor 1 está associado aos autovetores 0.707 e 0.707

C <- matrix(c(1, -3, 2, -2, 1, 3, 2, -1, -2), nrow=3, byrow=TRUE)
print(C)

eigen(C)
