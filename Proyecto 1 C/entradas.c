#include <stdio.h>
int pedirEntero(void){
  int x;
  printf("Intrduzca un entero\n");
  scanf("%d", &x);
  return x;
}
void imprimeEntero(int x){
  printf("%d\n", x);
}
int main(void){
  imprimeEntero(pedirEntero());
  return 0;
}
