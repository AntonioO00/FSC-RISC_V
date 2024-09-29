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
#           max = a[i];
#      }
# }
############################
.data # Dados do programa
max:	.word	0
n:		.word	5
a:		.word	0x123 0x345 0x879 0x100 0x090
############################
 
############################
.text # Codigo
.globl main
main: 
    # <COMPLETAR>
fim: 
    j fim               # trava o processador

############################