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
    int x,y,z,ximput,yimput,zimput;
    ximput = pedir_entero('x');
    yimput = pedir_entero('y');
    zimput = pedir_entero('z');
    x = ximput;
    y = yimput;
    z = zimput;
    assert(x == ximput && y == yimput && z == zimput);
    x = y;
    y = y + ximput + z;
    z = yimput + ximput;
    assert(x == yimput && y == yimput + ximput + zimput && z == yimput + ximput);
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    imprimir_entero('z',z);
    return 0;
}