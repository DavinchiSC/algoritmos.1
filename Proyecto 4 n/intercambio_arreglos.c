#include <stdio.h>
#define N 4
#include <assert.h>
void pedir_arreglo(int n_max, int a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca un valor para la posicion %d (el arreglo tendra %d elementos)\n", i,N);
        scanf("%d", &a[i]);
        i = i+1;
    }
}

void imprimir_arreglo(int n_max, int a[]){
    int i;
    i = 0;
    while (i<n_max){
    printf("a.%d = %d\n", i, a[i]);
    i = i+1;
    }
}

void intercambiar(int tam, int a[], int i, int j){
    int x;
    assert(i >= 0 && i < tam && j >= 0 && j < N);
    x = a[i];
    a[i] = a[j];
    a[j] = x;

}

int main (void) {
    int a[N],posi,posj;
    pedir_arreglo(N,a);
    printf("ingrese la posicion i\n");
    scanf("%d", &posi);
    printf("ingrese la posicion j\n");
    scanf("%d", &posj);
    if(posi >= N || posj >= N) {
        printf("alguna de las posiciones esta fuera de rango\n");
    }
    else{
        intercambiar(N,a,posi,posj);
        printf("asi queda con los valores intercambiados\n");
        imprimir_arreglo(N,a);
    }
    return 0;
}