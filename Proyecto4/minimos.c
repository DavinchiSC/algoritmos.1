#include <stdio.h>
#include <limits.h>
int minimo_pares(int a[], int tam){
    int minp = INT_MAX, i=0,j=0;
    int pares[tam];
    while (i<tam){
        if ((a[i] % 2)==0){
            pares[j] = a[i];
            j = j + 1;
        }
         i = i + 1;
    }
    i = 0;
    while (i<j){
        if(pares[i]<minp){
            minp = pares[i];
            i = i + 1;
        }
        else {
            i = i + 1;
        }
    }
    return minp;
}
int minimo_impares(int a[], int tam){
    int mini = INT_MAX, i=0,j=0;
    int impares[tam];
    while (i<tam){
        if ((a[i] % 2)!=0){
            impares[j] = a[i];
            j = j + 1;
        }
         i = i + 1;
    }
    i = 0;
    while (i<j){
        if(impares[i]<mini){
            mini = impares[i];
            i = i + 1;
        }
        else {
            i = i + 1;
        }
    }
    return mini;
}
void pedirArreglo(int a[], int n_max){
    int i = 0;
    while (i < n_max){
        printf("introduzca el valor para la posicion %d\n", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}
int main (void){
    int a[5];
    int minimop, minimoi;
    pedirArreglo(a,5);
    minimoi = minimo_impares(a,5);
    minimop= minimo_pares(a,5);
    printf("el minimo par es %d y el minimo impar es %d\n", minimop, minimoi);
    return 0;

}