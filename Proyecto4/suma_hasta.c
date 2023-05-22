#include <stdio.h>
int suma_hasta (int N) {
    int suma_parcial=0,i=0;
    while (i<=N) {
        suma_parcial = i + suma_parcial;
        i = i + 1;
    }
    return suma_parcial;
}

int main (void) {
    int n, suma;
    printf("introduzca el entero N\n");
    scanf("%d", &n);
    suma = suma_hasta (n);
    printf("el resultado es: %d\n", suma);
    return 0;
}