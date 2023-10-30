#include <stdio.h>
#include <assert.h>
int pedirEntero(char c) {
  int x;
  printf("Intrduzca un entero %c\n", c);
  scanf("%d", &x);
  return x;
}
int main(void) {
    int x = pedirEntero('x'),y = pedirEntero('y'),x0,y0,z;
    x0 = x;
    y0 = y;
    assert(x == x0 && y == y0);
    z = x;
    x = y;
    y = z;
    assert(x == y0 && y == x0);
    printf("x = %d, y = %d\n", x,y);
    return 0;
}