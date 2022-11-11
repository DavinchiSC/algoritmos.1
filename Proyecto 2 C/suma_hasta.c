#include <stdio.h>
int suma_hasta (int N) {
    int suma;
    suma = (N*(N+1))/2;
    return suma;
}
int main (void) {
    int x;
    printf("Intrduzca un entero N\n");
    scanf("%d", &x);
    if (x<0) {
        printf("Error, debe introducir un numero positivo");
    }
    else {
        printf("el resultado de la suma es %d\n", suma_hasta(x));
    }
}