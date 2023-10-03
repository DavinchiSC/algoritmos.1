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
    if (x>=y) {
        x = 0;
    }
    else {
        if (x<=y) {
            x = 2;
        }
    }
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    return 0;
}