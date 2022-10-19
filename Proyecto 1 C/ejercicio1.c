#include <stdio.h>

int main(void){
int x, y, z;
printf("Ingrese el valor de la variable x\n");
scanf("%d", &x);
printf("Ingrese el valor de la variable y\n");
scanf("%d", &y);
printf("Ingrese el valor de la variable z\n");
scanf("%d", &z);
printf("x + y + z = %d\n",x+y+z);
printf("z * z + y * 45 - 15 * x = %d\n",(z*z)+(y*45)-(15*x));
printf("y - 2 == (x * 3 + 1) % 5 = %d\n", (y-2)==((x*3+1)%5));
printf("y / 2 * x = %d\n",y/2*x);
printf("y < x * z = %d\n",y<x*z);
return 0;
}
