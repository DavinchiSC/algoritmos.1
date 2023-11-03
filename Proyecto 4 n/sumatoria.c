#include <stdio.h>
#define N 4
void pedir_arreglo(int n_max, int a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca un valor para la posicion %d\n", i);
        scanf("%d", &a[i]);
        i = i+1;
    }
}

int sumatoria (int tam,int a[]){
    int res, i;
    i = 0;
    res = 0;
    while (i<tam) {
        res = res + a[i];
        i = i + 1;
    }
    return res;
}
int main (void) {
    int a[N];
    pedir_arreglo(N,a);
    printf("la suma de los elementos del arreglo da %d\n", sumatoria(N,a));
}