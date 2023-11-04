#include<stdbool.h>
#include<stdio.h>
#define N 5

typedef char clave_t;
typedef int valor_t;

typedef struct {
clave_t clave;
valor_t valor;
}asoc;

void pedir_arreglo(int n_max, asoc a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca una clave para la posicion %d\n", i);
        scanf(" %c", &a[i].clave);
        printf("introduzca un valor para la posicion %d\n", i);
        scanf("%d", &a[i].valor);
        i = i+1;
    }
}

bool asoc_existe(int tam, asoc a[], clave_t c) {
    int i;
    bool res;
    i = 0;
    res = false;
    while (i<tam){
        res = res || a[i].clave == c;
        i = i + 1;
    }
    return res;
}

int main (void){
    asoc a[N];
    clave_t c;
    printf("introduzca una clave del tipo char\n");
    scanf("%c", &c);
    pedir_arreglo(N,a);
    if (asoc_existe(N,a,c)){
        printf("la clave se encuentra en el arreglo\n");
    }
    else {
        printf("la clave no se encuentra en el arreglo\n");
    }
    return 0;
}