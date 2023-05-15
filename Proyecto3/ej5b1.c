#include <stdio.h>
int main (void) {
    int x,y,i;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    printf ("Introduzca el valor de y\n");
    scanf ("%d", &y);
    i = 0;
    while (x >= y) {
        x = x - y;
        i = i + 1;
        printf ("iteracion %d: x = %d, y = %d, i = %d\n", i,x,y,i);
    }
    printf ("valores finales: x = %d, y = %d, i = %d\n", x,y,i);
    return 0;
}