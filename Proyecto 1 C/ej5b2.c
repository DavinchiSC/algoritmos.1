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
