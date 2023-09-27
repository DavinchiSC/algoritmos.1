#include <stdio.h>

int main (void) {
    int x;
    printf("Ingrese un valor para x\n");
    scanf("%d", &x);
    x = 5;
    printf("x termina con un valor de %d\n", x);
    return 0;
}

/*
Ejecucion 1: x = 1 -----> 5
Ejecucion 2: x = 6 -----> 5
Ejecucion 3: x = 2 -----> 5
*/