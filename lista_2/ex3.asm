############################
# LISTA 3 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 3 --------------
#---------------------------
# Implementar o código que segue para calcular divisão por subtrações sucessivas, utilizando o assembly do RISC-V
############################
#   Exemplo de divisão de 10 por 3 usando subtrações sucessivas:
#   [Dividendo] [Divisor]  [Dividendo-Divisor]  Quociente 
#      10           3               7               1 
#       7           3               4               2 
#       4           3               1               3 
#      d1          d2             resto             q
############################
############################
.data # Dados do programa
d1:    .word 10  # 64170  resposta: 489 (1E9)  resto 111  (6F)
d2:    .word 2    # 131
q:     .word 0
resto: .word 0
############################
 
############################
.text # Codigo
.globl main
main: 
    la s0, d1       
    lw s0, 0(s0)    # s0 <= d1

    la s1, d2       
    lw s1, 0(s1)    # s1 <= d2

    li s2, 0        # quociente <= 0

loop:
    blt s0, s1, salvaresto 

    sub s0, s0, s1  # d1 <= d1 - d2
    addi s2, s2, 1  # q++
    j loop

salvaresto:
    la t0, resto
    sw s0, 0(t0)    # mem[t0] <= d1
    la t0, q
    sw s2, 0(t0)    # mem[t0] <= q

fim: 
    j fim               # trava o processador
############################
