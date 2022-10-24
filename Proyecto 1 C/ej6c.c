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
int main (void){
    int x, y, z, m;
    x = pedirEntero();
    y = pedirEntero();
    z = pedirEntero();
    if (x<y){
        m = x;
    }
    else{
        m = y;
    }
    if (m>z){
        m = z;
    }
    printf("el minimo es %d\n", m);
    return 0;
}
/* la principal ventaja de hacer la función así es que solo tengo que llamar a la funcion que necesite sin necesidad de reescribir su codigo de nuevo. Quizá podria escibir una funcion que direcatemente calcule el mínimo y en la main junto con la de pedirEntero podría hacer todo. A éstas funciones las puedo usar en cualquier programa de los anteriores que haya necesitado scanf para solicitar bools o enteros, la de imprimir también pero en mi caso hice que cada programa mostrara el resultado acompañado del contexto especifico de ese ejercicio*/