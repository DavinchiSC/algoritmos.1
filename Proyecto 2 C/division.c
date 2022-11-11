#include <stdio.h>
struct div_t {
int cociente;
int resto;
};
struct div_t division (int x, int y) {
    struct div_t div;
    div.cociente = x / y;
    div.resto = x % y;
    return div;
}
int main (void) {
    int x, y;
    printf("Intrduzca el entero x\n");
    scanf("%d", &x);
    printf("Intrduzca el entero y\n");
    scanf("%d", &y);
    if ((y == 0)) {
        printf("El divisor no puede ser 0\n");
    }
    else {
        printf("El cociente es %d y el resto es %d\n", division(x,y).cociente, division(x,y).resto);
    }
    return 0;
}