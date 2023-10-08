#include <stdio.h>
int main(void){
    int x, y;
    printf("Introduzca el valor de la variable x\n");
    scanf("%d", &x);
    printf("Introduzca el valor de la variable y\n");
    scanf("%d", &y);
    if (x >= y)  {
        x = 0;
    }
    else  {
        if (x <= y)  {
          x = 2;
        }
    }
    printf("x = %d, y = %d\n", x, y);
    return 0;
}
