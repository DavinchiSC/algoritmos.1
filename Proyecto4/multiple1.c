#include <stdio.h>
#include <assert.h>
#define X 5
#define Y 3
int pedirEntero(char c) {
  int x;
  printf("Intrduzca un entero %c\n", c);
  scanf("%d", &x);
  return x;
}
int main (void) {
    int x = pedirEntero('x'),x0,y = pedirEntero('y'),y0;
    x0 = x;
    y0 = y;
    assert (x == X && y == Y);
    x = x0 + 1;
    y = x0 + y0;
    assert(x == X + 1 && y == X + Y);
    printf("x = %d, y = %d\n", x,y);
    return 0;
}