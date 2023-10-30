#include<stdio.h>

int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}

typedef struct {
    int cociente;
    int resto;
}div_t;

div_t division(int x, int y){
    div_t division;
    division.cociente = 0;
    division.resto = x;
    while (division.resto>=y) {
        division.resto = division.resto-y;
        division.cociente = division.cociente + 1;
    }
    return division;
}

int main(void) {
    int x,y;
    div_t div;
    x = pedir_entero('x');
    y = pedir_entero('y');
    if (y == 0){
        printf("el divisor no puede ser 0\n");
    }
    else {
    div = division(x,y);
    printf("el cociente es %d y el resto %d\n", div.cociente, div.resto);
    }
    return 0;

}