#include <stdio.h>
void pedirArreglo(int a[], int n_max){
    int i = 0;
    while (i < n_max){
        printf("introduzca el valor para la posicion %d\n", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}
void imprimeArreglo(int a[], int n_max){
    int i = 0;
    printf("los elementos del arreglo son:\n");
    while (i < n_max){
        printf("%d\n", a[i]);
        i = i + 1;
    }
}
int main (void) {
    int n;
    printf("cauntos enteros tendrá el arreglo?\n");
    scanf("%d", &n);
    int a[n];
    pedirArreglo (a,n);
    imprimeArreglo(a,n);
    return 0;
}