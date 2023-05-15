#include <stdio.h>
#include <assert.h>
int main (void) {
    int x,y;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    printf ("Introduzca el valor de y\n");
    scanf ("%d", &y);
    assert ((x == 6 && y == 2) || (x == 5 && y == 6) || (x == 1 && y == 3));
    x = x + y;
    printf ("x = %d\n", x);
    y = y + y;
    printf ("y = %d\n", y);
    return 0;
}