#include <stdio.h>
void imprimir_entero (char name, int x) {
    printf("%c = %d\n", name, x);
}
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int main (void) {
    int x,y;
    x = pedir_entero('x');
    y = pedir_entero('y');
    y = y + y;
    x = x + y;
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    return 0;
}

/*
Ejecucion 1: x = 4, y = 2 -----> x = 8, y = 4.
Ejecucion 2: x = 6, y = 9 -----> x = 24, y = 18.
Ejecucion 3: x = 12, y = 6 -----> x = 24, y = 12.
*/