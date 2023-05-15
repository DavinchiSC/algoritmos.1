#include <stdio.h>
int main (void) {
    int i;
    printf ("introduzca el valor de i\n");
    scanf("%d", &i);
    while (i != 0) {
        i = 0;
    }
    printf ("valor final de i = %d\n", i);
    return 0;
}