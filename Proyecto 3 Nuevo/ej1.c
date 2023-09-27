#include <stdio.h>

int main (void) {
    int x, y, z;
    printf("Introduzca un valor para x\n");
    scanf("%d", &x);
    printf("Introduzca un valor para y\n");
    scanf("%d", &y);
    printf("Introduzca un valor para z\n");
    scanf("%d", &z);
    printf("x + y + 1 = %d\n", x+y+1);
    printf("z * z + y * 45 - 15 * x = %d\n", z*z+y*45-15*x);
    printf("y - 2 == ((x * 3 + 1) %% 5) = %d\n", y-2 == (x*3+1)%5);
    printf("y / 2 * x = %d\n", y/2*x);
    printf("y < x * z = %d\n", y<x*z);
    return 0;

}
/*
Ejecucion con primer estado:
x + y + 1 = 11
z * z + y * 45 - 15 * x = 55
y - 2 == ((x * 3 + 1) % 5) = 0
y / 2 * x = 7
y < x * z = 1
Ejecucion con segundo estado:
x + y + 1 = 12
z * z + y * 45 - 15 * x = 499
y - 2 == ((x * 3 + 1) % 5) = 0
y / 2 * x = 5
y < x * z = 0
La ultima expresion tiene tipo Int en C. (pero representa un booleano)
*/
