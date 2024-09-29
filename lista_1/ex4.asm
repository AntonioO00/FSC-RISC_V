############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 4 --------------
#---------------------------
# char x = 'A';
# char y = 'Z';
# char z = x + y;
############################
.globl main

############################
.data # Dados do programa

x: .byte 'A'
y: .byte 'Z'
z: .byte 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim: 
    j fim               # trava o processador
############################