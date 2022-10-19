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
