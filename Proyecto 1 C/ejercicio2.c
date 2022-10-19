#include <stdio.h>
#include <stdbool.h>
int main(void){
int x, y, z;
bool b, w;
x = 4;
y = -4;
z = 8;
b = true;
w = true;
printf("x % 4 == 0 = %s\n", (x%4) == 0 ? "true" : "false");
printf("x + y == 0 && y - x == (-1) * z = %s\n", ((x + y) == 0 && (y - x) == ((-1) * z)) ? "true" : "false");
printf("not b && w = %s\n", !(b && w) ? "true" : "false");
return 0;
}
