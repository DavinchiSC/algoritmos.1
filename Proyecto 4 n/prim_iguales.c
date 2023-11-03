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

int prim_iguales(int tam, int a[]) {
    int i,l;
    i = 0;
    l = 1;
    while (i<tam-1) {
        if (a[i]==a[i+1]){
            l = l +1;
            i = i + 1;
        }
        else {
            i = tam;
        }
        
    }
    return l;
}

int main (void) {
    int a[N],i;
    i = 0;
    pedir_arreglo(N,a);
    printf("el tramo inicial con elementos iguales mas largo tiene %d elementos y es\n", prim_iguales(N,a));
    while (i<prim_iguales(N,a)){
        printf("a[%d] = %d\n", i,a[i]);
        i = i + 1;
    }
    return 0;
}