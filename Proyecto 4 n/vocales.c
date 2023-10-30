#include<stdio.h>
#include<stdbool.h>
char pedir_caracter (char c) {
    char a;
    printf("introduzca un char para guardar en %c\n", c);
    scanf("%c",&a);
    return a;
}
bool es_vocal (char letra) {
    bool res;
    res = false;
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
        res = true;
    }
    else {
        if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U') {
            res = true;
        }
    }
    return res;
}
int main (void) {
    char c;
    bool res;
    c = pedir_caracter('c');
    res = es_vocal(c);
    if (res) {
        printf("%c es una vocal\n", c);
    }
    else {
        printf("%c no es una vocal\n", c);
    }
    return 0;
}