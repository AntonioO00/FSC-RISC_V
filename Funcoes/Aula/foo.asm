############################
# AULA FUNCOES - RISC-V
# Prof. Iacana Ianiski Weber
############################
# int foo(int i) {
#     if(i == 0) return 0;
#     int a = i + foo(i-1);
#     return a;
# }
# void main(){
#     int j = foo(3);
#     int k = foo(100);
#     int m = j+k;
# }
############################
.globl main

############################
.data # Dados do programa

m: .word 0
############################

############################
.text # Codigo

main: 
    # <COMPLETAR>
fim: 
    j fim              # trava o processador


############################



