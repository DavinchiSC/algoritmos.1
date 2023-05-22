#include <stdio.h>
#include <assert.h>
#define X 5
#define Y 2
#define Z 1
int pedirEntero(char c) {
  int x;
  printf("Intrduzca un entero %c\n", c);
  scanf("%d", &x);
  return x;
}
int main (void) {
    int x = pedirEntero('x'),x0,y = pedirEntero('y'),y0,z = pedirEntero('z'),z0;
    x0 = x;
    y0 = y;
    z0 = z;
    assert (x == X && y == Y && z == Z);
    x = y0;
    y = y0 + x0 + z0;
    z = y0 + x0;
    assert(x == Y && y == Y + X + Z && z == Y + X);
    printf("x = %d, y = %d, z = %d\n", x,y,z);
    return 0;
}

