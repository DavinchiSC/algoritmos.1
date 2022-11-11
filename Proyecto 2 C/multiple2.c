#include <stdio.h>
#include <assert.h>
int main (void) {
    int x, y, z, X, Y, Z, a, b;
    printf("Intrduzca el entero x\n");
    scanf("%d", &x);
    printf("Intrduzca el entero y\n");
    scanf("%d", &y);
    printf("Intrduzca el entero z\n");
    scanf("%d", &z);
    X = x;
    Y = y;
    Z = z;
    assert ((x == X) && (y == Y) && (z == Z));
    a = x;
    b = y;
    x = y;
    y = y + a + z;
    z = a + b;
    printf("x = %d, y = %d y z = %d\n",x,y,z);
    assert ((x == Y) && (y == Y + X + Z) && (z == Y + X));
    return 0;
}


   