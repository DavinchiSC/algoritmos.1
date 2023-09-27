#include <stdio.h>
#include <stdbool.h>
int main (void) {
    int x, y, z, temp1, temp2;
    bool b, w, e1, e2, e3;
    printf("Introduzca un valor para x\n");
    scanf("%d", &x);
    printf("Introduzca un valor para y\n");
    scanf("%d", &y);
    printf("Introduzca un valor para z\n");
    scanf("%d", &z);
    printf("Introduzca un valor para b\n");
    scanf("%d", &temp1);
    printf("Introduzca un valor para w\n");
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
x % 4 == 0 True
x + y == 0 && y - x == (-1) * z True
not b && w False
Los siguientes valores cumplen: x = 4, Y = -4, z = 8, b = true y w = true. 
 */