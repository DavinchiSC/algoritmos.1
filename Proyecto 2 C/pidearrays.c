#include <stdio.h>
void pedirArreglo(int a[], int n_max) {
    int i;
    i = 0;
    printf("introduzca los valores del arreglo de a uno\n");
    while (i < n_max) {
        scanf("%d", &a[i]);
        i = i + 1;
    }
}
void imprimeArreglo(int a[], int n_max) {
    int i;
    i = 0;
    printf("los valores son:\n");
    while (i < n_max) {
        printf("%d  ", a[i]);
        i = i +1;
    }
}
int main (void) {
    int tam;
    printf("introduzca el largo del arreglo\n");
    scanf("%d", &tam);
    int a[tam];
    pedirArreglo(a, tam);
    imprimeArreglo(a, tam);
    return 0;
}