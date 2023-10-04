#include <stdio.h>
#include <stdbool.h>

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
    int x,i;
    bool res;
    x = pedir_entero('x');
    i = 2;
    res = true;
    while (i<x && res) {
        res = res && ((x % i) != 0);
        i = i+1;
    }
    imprimir_entero('r',res);
    return 0;
}
/*
estado luego de iterar 1: x --> 5, i --> 3, res --> true.
estado luego de iterar 2: x --> 5, i --> 4, res --> true.
estado luego de iterar 3: x --> 5, i --> 5, res --> true.
*/
/*este programa determina si un numero es o no primo*/