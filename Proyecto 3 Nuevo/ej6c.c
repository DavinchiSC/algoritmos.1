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
int main (void) {
    int x,y,z,m;
    x = pedir_entero('x');
    y = pedir_entero('y');
    z = pedir_entero('z');
    if (x<y) {
        m = x;
    }
    else {
        if (x>=y) {
            m = y;
        }
    }
    if (m>=z) {
            m = z;
        }
    imprimir_entero('m',m);
    return 0;
}
/*
La mayor ventaja que veo es la claridad y orden que aporta en la funcion main el hecho de 
no tener tanto código que realiza tareas simples como en éste caso.
Podria hacer otra función que calcule el mínimo directamente y llamarla en la función main.
A éstas funciones las puedo usar en cualquier programa de los anteriores que haya necesitado solicitar/imprimir bools o enteros.
*/