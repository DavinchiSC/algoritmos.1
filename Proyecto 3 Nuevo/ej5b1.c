#include <stdio.h>
int main (void) {
    int i,x,y;
    printf("introduzca un valor para x\n");
    scanf("%d", &x);
    printf("introduzca un valor para y\n");
    scanf("%d", &y);
    i = 0;
    while (x>=y) {
        x = x-y;
        i = i+1;
    }
    return 0;
}
/*
estado luego de iterar 1: x --> 10, y --> 3, i --> 1.
estado luego de iterar 2: x --> 7, y --> 3, i --> 2.
estado luego de iterar 3: x --> 4, y --> 3, i --> 3.
estado luego de iterar 4: x --> 1, y --> 3, i --> 4.
*/
/*Este programa ejecuta el algoritmo de division, siendo i el cociente y x el resto al terminar la ejecucion*/