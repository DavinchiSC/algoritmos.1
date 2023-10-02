#include <stdio.h>

int main (void) {
    int x,y;
    printf("Ingrese un valor para x\n");
    scanf("%d", &x);
    printf("Ingrese un valor para y\n");
    scanf("%d", &y);
    if (x>=y) {
        x = 0;
    }
    else {
        if (x<=y) {
            x = 2;
        }
    }
    printf("'x' termina con un valor de %d e 'y' %d\n", x,y);
    return 0;
}