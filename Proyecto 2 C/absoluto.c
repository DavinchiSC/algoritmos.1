#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
int main (void) {
    int x, abs;
    printf("Intrduzca un entero\n");
    scanf("%d", &x);
    assert (true);
    if (x>=0) {
        abs = x;
    }
    else {
        abs = (-x);
    }
    printf ("El valor absoluto es %d\n", abs);
    assert (abs >= 0);
    return 0;

}