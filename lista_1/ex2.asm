############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 2 --------------
#---------------------------
# int a = 25;
# int b = 15;
# int c = a – b - 7;
############################
.globl main

############################
.data # Dados do programa

a: .word 25
b: .word 15
c: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim: 
    j fim              # trava o processador
############################