#include <stdio.h>
int main(void){
int x, y;
printf("Introduzca el valor de la variable x\n");
scanf("%d", &x);
printf("Introduzca el valor de la variable y\n");
scanf("%d", &y);
y = y + y;
x = x + y;
printf("x = %d, y = %d\n", x, y);
return 0;
}
/*
Ejecucion 1: x = 4, y = 2 -----> x = 8, y = 4.
Ejecucion 2: x = 6, y = 9 -----> x = 24, y = 18.
Ejecucion 3: x = 12, y = 6 -----> x = 24, y = 12.
*/