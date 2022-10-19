#include <stdio.h>
int main (void)  {
  int x, y, z, m;
  printf("Introduzca el valor de la variable x\n");
  scanf("%d",&x);
  printf("Introduzca el valor de la variable y\n");
  scanf("%d",&y);
  printf("Introduzca el valor de la variable z\n");
  scanf("%d",&z);
  if (x<y)  {
    m = x;
  }
  else  {
    m = y;
  }
  if (m>=z)  {
    m = z;
  }
  printf("El minimo es %d\n", m);
  return 0;
}
