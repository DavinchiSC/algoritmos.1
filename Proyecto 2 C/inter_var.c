#include <stdio.h>
#include <assert.h>
int main (void) {
    int x, y, z, a, b;
    printf("Intrduzca el entero x\n");
    scanf("%d", &x);
    printf("Intrduzca el entero y\n");
    scanf("%d", &y);
    a = x;
    b = y;
    assert ((x == a) && (y == b));
    z = x;
    x = y;
    y = z;
    printf("x = %d e y = %d\n",x,y);
    assert((x == b) && (y == a));
    return 0;
}