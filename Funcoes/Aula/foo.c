#include<stdio.h>
#include<stdlib.h>

int foo(int i) {
    if(i == 0) return 0;
    int a = i + foo(i-1);
    return a;
}

void main(){
    int j = foo(3);
    int k = foo(100);
    int m = j+k;
    printf("%x\n", m);
}
