#include <stdio.h>
#include <stdbool.h>
int main (void) {
    int x,i;
    bool res;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    i = 2;
    res = true;
    while ((i < x) && res) {
        res = res && ((x % i) != 0);
        i = i + 1;
        printf ("iteracion %d: x = %d, i = %d, res = %d\n", i-2,x,i,res);
    }
    printf ("valores finales: x = %d, i = %d, res = %d\n", x,i,res);
    return 0;

}    