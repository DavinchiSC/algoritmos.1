#include <stdio.h>
#include <stdbool.h>
#include <limits.h>
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

bool todos_pares(int tam, int a[]){
    int i;
    bool res;
    i = 0;
    res = true;
    while (i<tam){
        res = res && (a[i] % 2 == 0);
        i = i + 1;
    }
    return res;
}

bool existe_multiplo(int m, int tam, int a[]){
    int i;
    i = 0;
    bool res;
    res = false;
    while (i<tam){
        res = res || (a[i] % m == 0);
        i = i + 1;
    }
    return res;
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
    if (!todos_pares(N,a)){
        printf("el menor impar es %d\n", mini);
    }
    if (existe_multiplo(2,N,a)){
        printf("el menor par es %d\n", minp);
    }
    printf("el menor de todos es %d\n", mint);
    return 0;
}