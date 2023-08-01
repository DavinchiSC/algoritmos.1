#include <stdio.h>
typedef struct  {
    int cociente;
    int resto;
}  div_t;
int pedirEntero(char c) {
  int x;
  printf("Intrduzca un entero %c\n", c);
  scanf("%d", &x);
  return x;
}
div_t division(int x, int y){
    int num = x, den = y, i = 0;
    div_t div;
    while (num >= den){
        num = num - den;
        i = i+1;
    }
    div.cociente = i;
    div.resto = num;
    return div;
}
int main (void) {
    int x = pedirEntero ('x');
    int y = pedirEntero ('y');
    if (y == 0) {
        printf("El divisor no puede ser 0\n");
    }
    else {
        div_t div;
        div = division (x,y);
        printf ("el cociente es %d y el resto es %d\n", div.cociente, div.resto);
    }
    return 0;
}