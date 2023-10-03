/*
PEDIR E IMPRIMIR ENTEROS:
----------------------------------------------------
void imprimir_entero (char name, int x) {
    printf("%c = %d\n", name, x);
}
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}
----------------------------------------------------

PEDIR E IMPRIMIR BOOLEANOS:
----------------------------------------------------
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
---------------------------------------------------
*/