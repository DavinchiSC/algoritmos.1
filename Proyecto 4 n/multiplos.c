#include <stdio.h>
#include <stdbool.h>
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
    res = true;
    while (i<tam){
        res = res || (a[i] % m == 0);
        i = i + 1;
    }
    return res;
}

int main (void) {
    int a[N];
    int decision,m;
    bool res;
    pedir_arreglo(N,a);
    printf("ingrese 1 para usar ""existe_multiplo"" o 2 para ""todos_pares""\n");
    scanf("%d", &decision);
    if (decision == 1){
        printf("ingrese el m para ver si hay multiplos de èl\n");
        scanf("%d", &m);
        res = existe_multiplo(m,N,a);
        if (res) {
            printf("hay al menos un multiplo de %d\n", m);
        }
        else {
            printf("no hay ningun multiplo de %d\n", m);
        }
    }
    else {
        res = todos_pares(N,a);
        if (res){
            printf("todos los elementos del arreglo son pares\n");
        }
        else{
            printf("ningun elemento es par\n");
        }
    }
    return 0;
}