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
    x = x + y;
    y = y + y;
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    return 0;
}

/*
Ejecucion 1: x = 7, y = 1 -----> x = 8, y = 2.
Ejecucion 2: x = 2, y = 5 -----> x = 7, y = 10.
Ejecucion 3: x = 3, y = 3 -----> x = 6, y = 6.
*/