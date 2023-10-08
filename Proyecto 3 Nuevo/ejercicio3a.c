#include <stdio.h>
int main (void){
int x;
printf("Introduzca el valor de la variable x\n");
scanf("%d", &x);
x = 5;
printf("x = %d\n", x);
return 0;
}
/*
Ejecucion 1: x = 1 -----> x = 5
Ejecucion 2: x = 6 -----> x = 5
Ejecucion 3: x = 2 -----> x = 5
*/