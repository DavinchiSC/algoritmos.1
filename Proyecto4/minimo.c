#include <stdio.h>
#include <assert.h>
int pedirEntero(void) {
  int x;
  printf("Intrduzca un entero\n");
  scanf("%d", &x);
  return x;
}
int main (void) {
    int x,y,m;
    x = pedirEntero();
    y = pedirEntero();
    assert(1);
    if (x >= y) {
        m = y;
    }
    else {
        m = x;
    }
    assert((m <= x) && (m <= y));
    printf("El minimo entre %d y %d es %d\n", x,y,m);
    return 0;
} 