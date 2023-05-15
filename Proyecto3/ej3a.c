#include <assert.h>
#include <stdio.h>
int main (void){
    int x;
    printf ("Introduzca el valor de x\n");
    scanf ("%d", &x);
    assert (x == 1 || x == 5 || x == 9);
    x = 5;
    printf("x = %d\n", x);
    return 0;
}