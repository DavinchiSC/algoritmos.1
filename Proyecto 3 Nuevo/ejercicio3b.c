#include <stdio.h>
int main(void){
int x, y;
printf("Introduzca el valor de la variable x\n");
scanf("%d", &x);
printf("Introduzca el valor de la variable y\n");
scanf("%d", &y);
x = x + y;
y = y + y;
printf("x = %d, y = %d\n", x, y);
return 0;
}
/*
Ejecucion 1: x = 7, y = 1 -----> x = 8, y = 2.
Ejecucion 2: x = 2, y = 5 -----> x = 7, y = 10.
Ejecucion 3: x = 3, y = 3 -----> x = 6, y = 6.
*/