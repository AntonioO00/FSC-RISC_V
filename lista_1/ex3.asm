############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 3 --------------
#---------------------------
# int a = 8;
# int b = 6;
# int d = a * 2 + b;
############################
.globl main

############################
.data # Dados do programa

a: .word 8
b: .word 6
d: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim: 
    j fim              # trava o processador
############################