#include <stdio.h>
int main(void)  {
  int i;
  printf("Ingrese el valor de i\n");
  scanf("%d", &i);
  while (i != 0)  {
    i = i-1;
  }
  printf("i = %d", i);
  return 0;
}
