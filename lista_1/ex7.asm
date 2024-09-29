############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 7 --------------
#---------------------------
# int x = 7;
# int y = 21;
# int z = x - 3 + y;
############################
.globl main

############################
.data # Dados do programa

x: .word 7
y: .word 21
z: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim:
    j fim               # trava o processador
############################