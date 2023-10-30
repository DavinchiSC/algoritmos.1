#include<stdio.h>
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int suma_hasta (int n) {
    int i,s;
    i = 0;
    s = 0;
    while (i<n) {
        s = s + i;
        i = i + 1;
    }
    return s;
}
int main (void) {
    int n,res;
    n = pedir_entero('n');
    res = suma_hasta(n);
    printf("La suma hasta n es %d\n", res);
    return 0;
}