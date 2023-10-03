#include <stdio.h>
#include <stdbool.h>
int pedir_entero (char name) {
    int x;
    printf("ingrese un entero para %c\n", name);
    scanf("%d", &x);
    return x;
}

bool pedir_booleano (char name) {
    bool a;
    int temp;
    printf("introduzca un valor booleano (1 para true y 0 para false) para %c\n", name);
    scanf("%d", &temp);
    a = temp;
    return a;
}

int main (void) {
    int x, y, z, temp1, temp2;
    bool b, w, e1, e2, e3;
    x = pedir_entero('x');
    y = pedir_entero('y');
    z = pedir_entero('z');
    temp1 = pedir_booleano('b');
    temp2 = pedir_booleano('w');
    b = temp1;
    w = temp2;
    e1 = x % 4 == 0;
    e2 = x + y == 0 && y - x == (-1) * z;
    e3 = ! b && w;
    printf("x %% 4 == 0 = %d\n", e1);
    printf("x + y == 0 && y - x == (-1) * z = %d\n", e2);
    printf("not b && w = %d\n", e3);
    return 0;

}
/*Para que
x % 4 == 0 = True
x + y == 0 && y - x == (-1) * z = True
not b && w = False
Los siguientes valores cumplen: x = 4, Y = -4, z = 8, b = true y w = true. 
 */