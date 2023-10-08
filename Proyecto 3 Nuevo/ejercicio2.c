#include <stdio.h>
#include <stdbool.h>
int main(void){
int x, y, z,temp1,temp2;
bool b, w,e1,e2,e3;
printf("ingrese un entero para x\n");
scanf("%d", &x);
printf("ingrese un entero para y\n");
scanf("%d", &y);
printf("ingrese un entero para z\n");
scanf("%d", &z);
printf("introduzca un valor booleano (1 para true y 0 para false) para b \n");
scanf("%d", &temp1);
printf("introduzca un valor booleano (1 para true y 0 para false) para w\n");
scanf("%d", &temp2);
b = temp1;
w = temp2;
e1 = x % 4 == 0;
e2 = x + y == 0 && y - x == (-1) * z;
e3 = ! b && w;
printf("x %% 4 == 0 = %d\n", e1);
printf("x + y == 0 && y - x == (-1) * z = %d\n", e2);
printf("not b && w = %d\n", e3);
return 0;
}
/*Para que
x % 4 == 0 = True
x + y == 0 && y - x == (-1) * z = True
not b && w = False
Los siguientes valores cumplen: x = 4, Y = -4, z = 8, b = true y w = true. 
 */