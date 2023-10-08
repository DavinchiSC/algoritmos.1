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
    int x;
    x = pedir_entero('x');
    x = 5;
    imprimir_entero('x',x);
    return 0;
}

/*
Ejecucion 1: x = 1 -----> x = 5
Ejecucion 2: x = 6 -----> x = 5
Ejecucion 3: x = 2 -----> x = 5
*/