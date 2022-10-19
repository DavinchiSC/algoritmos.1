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
    printf("Valores por vuelta: i = %d, y = %d, x = %d\n", i, y, x);
  }
  printf("Valores finales: i = %d, y = %d, x = %d\n", i, y, x);
  return 0;
}
