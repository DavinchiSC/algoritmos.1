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
    imprimir_entero('x',pedir_entero('x'));
    return 0;
}