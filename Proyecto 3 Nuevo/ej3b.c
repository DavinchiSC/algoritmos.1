#include <stdio.h>

int main (void) {
    int x,y;
    printf("Ingrese un valor para x\n");
    scanf("%d", &x);
    printf("Ingrese un valor para y\n");
    scanf("%d", &y);
    x = x + y;
    y = y + y;
    printf("'x' termina con un valor de %d e 'y' %d\n", x,y);
    return 0;
}

/*
Ejecucion 1: x = 7, y = 1 -----> x = 8, y = 2.
Ejecucion 2: x = 2, y = 5 -----> x = 7, y = 10.
Ejecucion 3: x = 3, y = 3 -----> x = 6, y = 6.
*/