#include <stdio.h>
int main (void) {
    int x,y,z,m;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    printf ("Introduzca el valor de y\n");
    scanf ("%d", &y);
    printf ("Introduzca el valor de z\n");
    scanf ("%d", &z);
    if (x < y)
     {
        m = x;   
    }
    else {
        m = y;
    }
    printf ("x, y, z, m = %d, %d, %d,%d\n", x,y,z,m);
    if (m >= z) {
        m = z;
    }
    printf ("El menor entre %d,%d,%d es %d\n", x,y,z,m);
    return 0;
}    