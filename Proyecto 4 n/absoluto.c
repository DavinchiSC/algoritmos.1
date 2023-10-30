#include <stdio.h>
#include <assert.h>
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int absoluto (int x) {
    if (x<0) {
        x = -x;
    }
    return x;
}
int main (void) {
    int x;
    x = pedir_entero('x');
    printf("el valor absoluto de %d es %d\n", x, absoluto(x));
    return 0;
}