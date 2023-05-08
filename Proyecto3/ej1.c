#include <stdio.h>

int main(void) {
    int x, y, z;
    printf("ingrese el valor de x \n");
    scanf("%d", &x);
    printf("ingrese el valor de y \n");
    scanf("%d", &y);
    printf("ingrese el valor de z \n");
    scanf("%d", &z);
    printf("x + y + 1 = %d\n",x+y+1);
    printf("z * z + y * 45 - 15 * x = %d\n",(z*z)+(y*45)-(15*x));
    printf("y - 2 == (x * 3 + 1) mod 5 = %d\n", (y-2)==((x*3+1)%5));
    printf("y / 2 * x = %d\n",y/2*x);
    printf("y < x * z = %d\n",y<x*z);
    return 0;
}