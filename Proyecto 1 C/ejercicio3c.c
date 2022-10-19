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
