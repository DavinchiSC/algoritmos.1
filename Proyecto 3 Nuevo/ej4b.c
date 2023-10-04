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
    int x,y,z,m;
    x = pedir_entero('x');
    y = pedir_entero('y');
    z = pedir_entero('z');
    if (x<y) {
        m = x;
    }
    else {
        if (x>=y) {
            m = y;
        }
    }
    if (m>=z) {
            m = z;
        }
    imprimir_entero('m',m);
    return 0;
}

/*
Estado 0: x --> 5, y --> 4, z --> 8, m --> 0
Estado 1: x --> 5, y --> 4, z --> 8, m --> 4
Estado 2: x --> 5, y --> 4, z --> 8, m --> 4

Luego de probar con otros estados iniciales vi que este programa calcula el minimo entre 3 numeros y lo "devuelve" en la variable m.
*/