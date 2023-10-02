#include <stdio.h>

int main (void) {
    int x,y,z,m;
    printf("Ingrese un valor para x\n");
    scanf("%d", &x);
    printf("Ingrese un valor para y\n");
    scanf("%d", &y);
    printf("Ingrese un valor para z\n");
    scanf("%d", &z);
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
    printf("m termina con un valor de %d\n", m);
    return 0;
}

/*
Estado 0: x --> 5, y --> 4, z --> 8, m --> 0
Estado 1: x --> 5, y --> 4, z --> 8, m --> 4
Estado 2: x --> 5, y --> 4, z --> 8, m --> 4

Luego de probar con otros estados iniciales vi que este programa calcula el minimo entre 3 numeros y lo "devuelve" en la variable m.
*/