############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 5 --------------
#---------------------------
# int array[3] = {1, 2, 3};
# int sum = array[0] + array[1] + array[2];	
############################
.globl main

############################
.data # Dados do programa

array: .word 1, 2, 3
sum: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim: 
    j fim               # trava o processador
############################