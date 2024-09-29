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
d1:    .word 0xFAAA  # 64170  resposta: 489 (1E9)  resto 111  (6F)
d2:    .word 0x83    # 131
q:     .word 0
resto: .word 0
############################
 
############################
.text # Codigo
.globl main
main: 
    # <COMPLETAR>
fim: 
    j fim               # trava o processador
############################