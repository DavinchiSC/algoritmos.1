#include <stdio.h>
void intercambiar(int a[], int tam, int i, int j){
    int r[tam];
    int p = 0;
    while (p<tam){
        r[p] = a[p];
        p = p + 1;
    }
    a[i] = r[j];
    a[j] = r[i];
}
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
int main (void){
    int n;
    int i,j;
    printf("cuantos elementos tendrá el arreglo\n");
    scanf("%d", &n);
    int a[n];
    pedirArreglo(a,n);
    printf("ingrese la primera posicion\n");
    scanf("%d", &i);
    printf("ingrese la segunda posicion\n");
    scanf("%d", &j);
    if (i>n || j>n || i<0 || j<0){
        printf("la posicion no está en el rango de elementos");
    }
    else {
        intercambiar(a,n,i,j);
        imprimeArreglo(a,n);
    }
    return 0;
}