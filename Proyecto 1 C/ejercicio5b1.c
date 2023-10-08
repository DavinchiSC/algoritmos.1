#include <stdio.h>
int main(void)  {
  int i, x, y;
  i = 0;
  printf("Introduzca el valor de la variable x\n");
  scanf("%d",&x);
  printf("Introduzca el valor de la variable y\n");
  scanf("%d",&y);
  while (x>=y)  {
    x = x - y;
    i = i + 1;
  }
  return 0;
}
/*
estado luego de iterar 1: x --> 10, y --> 3, i --> 0.
estado luego de iterar 2: x --> 7, y --> 3, i --> 1.
estado luego de iterar 3: x --> 4, y --> 3, i --> 2.
estado luego de iterar 4: x --> 1, y --> 3, i --> 3.
*/
/*Este programa ejecuta el algoritmo de division, siendo i el cociente y x el resto al terminar la ejecucion*/