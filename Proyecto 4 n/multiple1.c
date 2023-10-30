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
    int x,y,ximput,yimput;
    ximput = pedir_entero('x');
    yimput = pedir_entero('y');
    x = ximput;
    y = yimput;
    assert(x == ximput && y == yimput);
    x = x + 1;
    y = ximput + y;
    assert(x == ximput + 1 && y == ximput + yimput);
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    return 0;
}