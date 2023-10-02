#include <stdio.h>
int main (void)  {
    int i;
    printf("introduzca un valor para i\n");
    scanf("%d", &i);
    while (i != 0) {
        i = i-1;
    }
    printf("i termina valiendo %d\n", i);
    return 0;
}