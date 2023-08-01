#include <stdio.h>
int sumatoria(int a[], int tam){
    int i = 0;
    int suma = 0;
    while (i<tam){
        suma = suma + a[i];
        i = i + 1;
    }
    return suma;
}
void pedirArreglo(int a[], int n_max){
    int i = 0;
    while (i < n_max){
        printf("introduzca el valor para la posicion %d\n", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}
int main (void){
    int a[3];
    int suma;
    pedirArreglo(a,3);
    suma = sumatoria (a,3);
    printf("la suma de todos los elementos es %d\n", suma);
    return 0;
}