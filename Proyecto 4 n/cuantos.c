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

typedef struct {
int menores;
int iguales;
int mayores;
}comp_t;

comp_t cuantos(int tam, int a[], int elem){
    int i;
    comp_t c;
    c.menores = 0;
    c.mayores = 0;
    c.iguales = 0;
    i = 0;
    while (i<tam){
        if (a[i]> elem){
            c.mayores = c.mayores + 1;
        }
        else {
            if (a[i] < elem){
                c.menores = c.menores + 1;
            }
            else {
                c.iguales = c.iguales + 1;
            }
        }
        i = i + 1;
    }
    return c;
}

int main (void) {
    int a[N],e;
    comp_t c;
    pedir_arreglo(N,a);
    printf("introduzca el entero con el que quiera comparar\n");
    scanf("%d", &e);
    c = cuantos(N,a,e);
    printf("hay %d elementos menores, %d mayores y %d iguales\n",c.menores,c.mayores,c.iguales);
}