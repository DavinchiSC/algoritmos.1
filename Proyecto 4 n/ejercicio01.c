#include <stdio.h>
#include <assert.h>
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
void hola_hasta (int n) {
    int i;
    i = 0;
    while (i<n) {
        printf("hola\n");
        i = i+1;
    }
}
int main (void) {
    int n;
    n = pedir_entero('n');
    assert (n>0);
    hola_hasta(n);
    return 0;
}