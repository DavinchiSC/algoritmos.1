#include <stdio.h>
#include <assert.h>
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
void imprimir_entero (char name, int x) {
    printf("%c = %d\n", name, x);
}

int main (void) {
    int x,y,z,zimput;
    x = pedir_entero('x');
    y = pedir_entero('y');
    zimput = pedir_entero('z');
    z = x;
    x = y;
    y = zimput;
    printf("luego del intercambio:\n");
    imprimir_entero('z',z);
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    return 0;
}