#include <stdio.h>
void imprimir_entero (char name, int x) {
    printf("%c = %d\n", name, x);
}
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
int main (void)  {
    int i;
    i = pedir_entero('i');
    while (i != 0) {
        i = i-1;
    }
    imprimir_entero('i',i);
    return 0;
}