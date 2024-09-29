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
n:	.word	17
############################
.text # Codigo
.globl main
main: 
    # <COMPLETAR>
fim: 
    j fim               # trava o processador
############################