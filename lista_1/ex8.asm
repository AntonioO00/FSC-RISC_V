############################
# LISTA 1 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 8 --------------
#---------------------------
# char buf[4] = {'H', 'e', 'l', 'o'};
# char first = buf[0];
# char last = buf[3];
############################
.globl main

############################
.data # Dados do programa

buf: .byte 'H', 'e', 'l', 'o'
first: .byte 0
last: .byte 0
############################

############################
.text # Codigo

main: 
    # COMPLETAR #
fim:
    j fim               # trava o processador
############################