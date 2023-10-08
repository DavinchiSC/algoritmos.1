#include <stdio.h>
#include <stdbool.h>
int main(void)  {
  int x, i, res;
  i = 2;
  res = true;
  printf("Introduzca el valor de la variable x\n");
  scanf("%d",&x);
  while (i < x && res)  {
    res = res && ((x % i) != 0);
    i = i + 1;
    printf("Valores por vuelta: x = %d, i = %d, res = %s\n", x, i, res ? "true" : "false");
  }
  printf("Valores finales: x = %d, i = %d, res = %s\n", x, i, res ? "true" : "false");
  return 0;
}
/*
estado luego de iterar 1: x --> 5, i --> 3, res --> true.
estado luego de iterar 2: x --> 5, i --> 4, res --> true.
estado luego de iterar 3: x --> 5, i --> 5, res --> true.
*/
/*este programa determina si un numero es o no primo*/