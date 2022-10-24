#include <stdio.h>
#include <stdbool.h>
bool pedirBooleano (void){
  int b;
  printf("Introduzca 1 para verdadero o 0 para falso\n");
  scanf("%d", &b);
  if (b == 0){
    return false;  
  }
  else{
    return true;
  }
}
void imprimeEntero (bool b){
  printf("%s\n", b ? "true" : "false");
}
int main (void){
  imprimeEntero(pedirBooleano());
}