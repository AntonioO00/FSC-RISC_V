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
save: .word	0x901 0x100 100 124 888 9999 0x345 0x879 0x100 0x900
############################
 
############################
.text # Codigo
.globl main

main: 
    li s3, 0        # i = 0
    
    la s5, k        # s5 <= &k
    lw s5, 0(s5)    # s5 <= k

    la s6, save     # s6 <= &save

loop:
    slli t1, s3, 2  # t1 <= i*4
    add t2, s6, t1  # t2 <= &save[i]   
    lw t0, 0(t2)             # t0 <= save[i]
    beq t0, s5, savePos      # se k == save[i], quebra o laço

    addi s3, s3, 1  # i++

    j loop


savePos:
    la t1, pos      # t1 <= &pos
    sw s3, 0(t1)    # mem[t1] <= i

fim:   j    fim

############################
