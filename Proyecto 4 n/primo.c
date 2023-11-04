#include<stdio.h>
#include<stdbool.h>
#define N 5

int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}

bool es_primo(int x){
    int i;
    bool res;
    i = 2;
    res = true;
    while (i < x && res)  {
        res = res && ((x % i) != 0);
        i = i + 1;
    }
    return res;
}

int nesimo_primo(int n) {
    int i,j,res;
    i = 2;
    j = 0;
    while(j != n){
        if (es_primo(i)){
            res = i;
            j = j + 1;
            i = i + 1;
        }
        else {
            i = i + 1;
        }
    }
    return res;
}

int main (void){
    int n;
    n = pedir_entero('n');
    /*acá pido que el n sea mayor o igual a cero y no menor estricto
    porque mi función cuenta desde el 1 (que sería el 2) en adelante*/
    if(n<=0){
        while (n<=0){
            printf("Introduzca un entero positivo\n");
            scanf("%d", &n);
        }
    } 
    printf("el %d-ésimo primo es %d\n", n,nesimo_primo(n));
    return 0;
}