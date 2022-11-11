#include <stdio.h>
#include <assert.h>
int main (void) {
    int x, y, X, Y, z;
    printf("Intrduzca el entero x\n");
    scanf("%d", &x);
    printf("Intrduzca el entero y\n");
    scanf("%d", &y);
    X = x;
    Y = y;
    assert ((x == X) && (y == Y));
    z = x;
    x = x + 1;
    y = z + y;
    printf("x = %d e y = %d\n",x,y);
    assert ((x == X + 1) && (y == X + Y));
    return 0;
}