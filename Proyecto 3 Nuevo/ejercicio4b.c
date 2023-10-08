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
/*
Estado 0: x --> 5, y --> 4, z --> 8, m --> 0
Estado 1: x --> 5, y --> 4, z --> 8, m --> 4
Estado 2: x --> 5, y --> 4, z --> 8, m --> 4

Luego de probar con otros estados iniciales vi que este programa calcula el minimo entre 3 numeros y lo "devuelve" en la variable m.
*/