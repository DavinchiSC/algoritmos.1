#include <stdio.h>

int main (void) {
    int x,y;
    printf("Ingrese un valor para x\n");
    scanf("%d", &x);
    printf("Ingrese un valor para y\n");
    scanf("%d", &y);
    y = y + y;
    x = x + y;
    printf("'x' termina con un valor de %d e 'y' %d\n", x,y);
    return 0;
}

/*
Ejecucion 1: x = 4, y = 2 -----> x = 8, y = 4.
Ejecucion 2: x = 6, y = 9 -----> x = 24, y = 18.
Ejecucion 3: x = 12, y = 6 -----> x = 24, y = 12.
*/