#include <stdio.h>
#include <assert.h>
int main (void) {
    int x,y;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    printf ("Introduzca el valor de y\n");
    scanf ("%d", &y);
    assert ((x == 4 && y == 5) || (x == 3 && y == 6) || (2 == 1 && y == 1));
    y = y + y;
    printf ("y = %d", y);
    x = x + y;
    printf ("x = %d", x);
    return 0;
}