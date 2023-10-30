#include<stdio.h>
#define N 5

void pedir_arreglo(int n_max, int a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca un valor para la posicion %d\n", i);
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

int main (void) {
    int a[N];
    pedir_arreglo(N,a);
    imprimir_arreglo(N,a);
    return 0;
}