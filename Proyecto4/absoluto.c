#include <stdio.h>
#include <assert.h>
int pedirEntero(void) {
  int x;
  printf("Intrduzca un entero\n");
  scanf("%d", &x);
  return x;
}
int main (void) {
    int x = pedirEntero(),a;
    assert(1);
    if (x>=0) {
        a = x;
    }
    else {
        a = -x;
    }
    assert(x==x || x==-x);
    printf("El valor absoluto de %d es: %d\n", x,a);
    return 0;
}