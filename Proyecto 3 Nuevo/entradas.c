#include <stdio.h>
void imprimir_entero (int x) {
    printf("%d\n", x);
}
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int main (void) {
    imprimir_entero(pedir_entero('x'));
    return 0;
}