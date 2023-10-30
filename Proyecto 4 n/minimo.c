#include <stdio.h>
#include <assert.h>

int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int minimo (int x, int y) {
    int m;
    if (x>=y){
        m = y;
    }
    else {
        m = x;
    }
    return m;
}
int main (void) {
    int x,y;
    x = pedir_entero('x');
    y = pedir_entero('y');
    printf("El minimo entre %d y %d es %d\n", x,y,minimo(x,y));
    return 0;
}