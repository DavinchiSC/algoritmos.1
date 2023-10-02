#include <stdio.h>
#include <stdbool.h>
bool pedir_booleano (char name) {
    bool a;
    int temp;
    printf("introduzca un valor booleano (1 para true y 0 para false) para %c\n", name);
    scanf("%d", &temp);
    a = temp;
    return a;
}
void imprimir_booleano (bool x) {
    if (x == false) {
        printf("falso\n");
    }
    else {
        printf("verdadero\n");
    }
}
int main (void) {
    imprimir_booleano (pedir_booleano('b'));
    return 0;
}