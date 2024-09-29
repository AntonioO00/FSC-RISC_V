############################
# LISTA 3 - RISC-V
# Prof. Iacana Ianiski Weber
#---------------------------
# Exercicio 4 --------------
#---------------------------
# Implemente um código que calcula o enésimo valor da série Fibonacci, utilize uma funcao recursiva para tal.
# Não esqueça de fazer a manipulação da pilha.
############################
#  int fibonacci(int n) {
#     if (n <= 1) {
#         return n; // Caso base: fibonacci(0) = 0 e fibonacci(1) = 1
#     }
#     return fibonacci(n - 1) + fibonacci(n - 2); // Chamada recursiva
# }
############################
.data # Dados do programa
n:	.word 20
result: .word 0
############################
.text # Codigo
.globl main
main: 
    la s0, n     # s0 <= &n
    lw s0, 0(s0) # s0 <= n

    mv a0, s0    # a0 <= n
    jal fibonacci   # retorno vai estar em a0

    la t0, result   # t0 <= &result
    sw a0, 0(t0)    # mem[&result] <= fibonacci(n)

fim: 
    j fim               # trava o processador

fibonacci:
    addi sp, sp, -16    # abrindo espaco na pilha para salvar s0
    sw s0, 0(sp)       # salvando s0 na pilha
    sw ra, 4(sp)       # salva o endereço de retorno
    sw s1, 8(sp)       # salva o s1 na pilha

    li s0, 1
    ble a0, s0, retorno

    addi a0, a0, -1    # a0 <= n-1
    sw a0, 12(sp)      # salva o (n-1) na pilha
    jal fibonacci      # retorna em a0!
    mv s1, a0          # guardo o resultado de fibonacci(n-1) em s1
    lw a0, 12(sp)      # recupero o (n-1) em a0
    addi a0, a0, -1    # a0 <= n-2
    jal fibonacci      # retorna em a0!
    add a0, a0, s1     # a0 <= s1(fibonacci(n-1)) + a0(fibonacci(n-2))

retorno:
    lw s1, 8(sp)       # recupera o s1 da pilha
    lw ra, 4(sp)
    lw s0, 0(sp)       # recupera o dado de s0 da pilha
    addi sp, sp, 16     # destroi o espaco da alocado na pilha
    jr ra



############################
