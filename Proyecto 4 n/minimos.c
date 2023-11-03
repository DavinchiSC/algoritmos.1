#include <stdio.h>
#include <limits.h>
#define N 4

void pedir_arreglo(int n_max, int a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca un valor para la posicion %d (el arreglo tendra %d elementos)\n", i,N);
        scanf("%d", &a[i]);
        i = i+1;
    }
}

int minimo (int x, int y) {
    int m;
    if (x>=y){
        m = y;
    }
    else {
        m = x;
    }
    return m;
}

int minimo_pares(int tam, int a[]){
    int min,i;
    i = 0;
    min = INT_MAX;
    while (i<tam){
        if (a[i] % 2 == 0){
            min = minimo(min,a[i]);
        }
        i = i + 1;
    }
    return min;
}

int minimo_impares(int tam, int a[]){
    int min,i;
    i = 0;
    min = INT_MAX;
    while (i<tam){
        if (a[i] % 2 != 0){
            min = minimo(min,a[i]);
        }
        i = i + 1;
    }
    return min;
}

int main (void) {
    int a[N];
    int minp,mini,mint;
    pedir_arreglo(N,a);
    minp = minimo_pares(N,a);
    mini = minimo_impares(N,a);
    mint = minimo(minp,mini);
    printf("el resultado de minimo_pares es %d\n", minp);
    printf("el resultado de minimo_impares es %d\n", mini);
    printf("el minimo ""absoluto"" es %d\n", mint);
    return 0;
}