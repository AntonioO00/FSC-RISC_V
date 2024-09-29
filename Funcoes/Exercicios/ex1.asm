############################
# LISTA 3 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 1 --------------
#---------------------------
# Encontrar um elemento no vetor save
# Assumir: i em $s3, k em $s5, *save em $s6
# Assumir a área de dados abaixo e completar com o que se pede
# 
# main() {
#      int save[] = {0x901, 0x345, 0x879, 0x100, 0x900};
#      int i = 0, k = 0x100, pos = 0;
#      while(save[i] != k)
#           i++; 
#      pos = i;
# }
############################
.data # Dados do programa
k: .word   0x100
pos: .word   0
save: .word	0x901 0x345 0x879 0x100 0x900
############################
 
############################
.text # Codigo
.globl main

main:  #<completar>

fim:   j    fim

############################