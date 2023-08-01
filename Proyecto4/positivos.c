#include <stdio.h>
#include <stdbool.h>
void pedirArreglo(int a[], int n_max){
    int i = 0;
    while (i < n_max){
        printf("introduzca el valor para la posicion %d\n", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}
bool existe_positivo(int a[], int tam){
    int i = 0;
    bool pos = false;
    while (i<tam){
        if (a[i] > 0){
            pos = true;
        }
        i = i +1;
    }
    return pos;
}
bool todos_positivos(int a[], int tam){
    int i = 0;
    bool pos = true;
    while (i<tam){
        if (a[i] < 0){
            pos = false;
        }
        i = i +1;
    }
    return pos;
}
int main (void){
    int a[3];
    int decision;
    bool resultado;
    pedirArreglo(a,3);
    printf("para saber si  son todos positivos ingrese 1, para saber si existe algun positivo ingrese 2\n");
    scanf("%d", &decision);
    if (decision == 1) {
        resultado = todos_positivos(a,3);
        printf("el resultado dio %s\n", resultado ? "true" : "false");
    }
    else {
        if (decision == 2){
            resultado = existe_positivo(a,3);
            printf("el resultado dio %s\n", resultado ? "true" : "false");
        }
        else {
            printf ("opcion seleccionada incorrecta\n");
        }
    }
    return 0;
}