#include <stdio.h>
int main (void) {
    int x,y;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    printf ("Introduzca el valor de y\n");
    scanf ("%d", &y);
    y = y + y;
    printf ("y = %d", y);
    x = x + y;
    printf ("x = %d", x);
    return 0;
}