#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
int main (void){
    int x, y, min;
    min = 0;
    printf("Intrduzca un entero\n");
    scanf("%d", &x);
    printf("Intrduzca el otro entero\n");
    scanf("%d", &y);
    assert (true);
    if (x>=y) {
        min = y;
    }
    else {
        min = x;
    }
    printf("el minimo es %d\n", min);
    assert ((min <= x) && (min <= y));
    return 0; 
}