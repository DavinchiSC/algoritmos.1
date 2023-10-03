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
void imprimir_booleano (char name, bool x) {
    if (x == false) {
        printf("%c = falso\n", name);
    }
    else {
        printf("%c = verdadero\n", name);
    }
}
int main (void) {
    imprimir_booleano ('b',pedir_booleano('b'));
    return 0;
}