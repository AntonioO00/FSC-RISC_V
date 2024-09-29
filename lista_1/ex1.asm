############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 1 --------------
#---------------------------
# int a = 5;
# int b = 10;
# int c = a + b;	
############################
.globl main

############################
.data # Dados do programa

a: .word 5
b: .word 10
c: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim: 
    j fim              # trava o processador
############################