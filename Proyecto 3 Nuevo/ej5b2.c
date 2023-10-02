#include <stdio.h>
#include <stdbool.h>
int main (void) {
    int x,i;
    bool res;
    printf("introduzca un valor para x\n");
    scanf("%d", &x);
    i = 2;
    res = true;
    while (i<x && res) {
        res = res && ((x % i) != 0);
        i = i+1;
    }
    printf("el resultado es %d\n", res);
    return 0;
}
/*
estado luego de iterar 1: x --> 5, i --> 3, res --> true.
estado luego de iterar 2: x --> 5, i --> 4, res --> true.
estado luego de iterar 3: x --> 5, i --> 5, res --> true.
*/
/*este programa determina si un numero es o no primo*/