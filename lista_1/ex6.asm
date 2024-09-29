############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 6 --------------
#---------------------------
# int a = 5;
# int b = 10;
# int temp = a;
# a = b;
# b = temp;
############################
.globl main

############################
.data # Dados do programa

a: .word 5
b: .word 10
temp: .word 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim:
    j fim               # trava o processador
############################