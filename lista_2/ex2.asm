############################
# LISTA 3 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 2 --------------
#---------------------------
# Implementar o código que segue para calcular o maior valor em um vetor de naturais, utilizando o assembly do RISC-V
# main() {
#      int a[] = {0x123, 0x345, 0x879, 0x100, 0x090};
#      int max = 0, n = 5;
#      for(int i = 0; i < n; i++)  {
#           if (a[i] > max)
#               max = a[i];
#      }
# }
############################
.data # Dados do programa
max:	.word	0
n:		.word	6
a:		.word	0x123 0x345 0x879 0x100 0x090 0x1000
############################
 
############################
.text # Codigo
.globl main
main: 
    li s0, 0     # s0 <= max (0)

    la s1, n     # s1 <= &n
    lw s1, 0(s1) # s1 <= n

    la s2, a     # s2 <= &a

    li s3, 0     # s3 <= i (0)

loop:
    bge s3, s1, fim # se i >= n, encerra o loop

    slli t0, s3, 2  # t0 <= i*4
    add t0, t0, s2  # &a[i]
    lw t0, 0(t0)    # t0 <= a[i]

    ble t0, s0, ipp # se a[i] <= max, faz i++

    mv s0, t0       # max <= a[i]
    la t1, max      # t1 <= &max
    sw s0, 0(t1)    # mem[&max] <= max

ipp:
    addi s3, s3, 1  # i++
    j loop

fim: 
    j fim               # trava o processador

############################