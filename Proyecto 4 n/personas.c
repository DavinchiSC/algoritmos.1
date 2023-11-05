#include <stdio.h>

typedef struct {
char *nombre;
int edad;
float altura;
float peso;
} persona_t;

float peso_promedio(unsigned int longitud, persona_t arr[]){
    float res = 0;
    unsigned int i = 0;
    while(i<longitud){
        res = res + arr[i].peso;
        i = i + 1;
    }
    res = res / longitud;
    return res;
}

persona_t persona_de_mayor_edad(unsigned int longitud, persona_t arr[]){
    persona_t res = arr[0];
    unsigned int i = 1;
    while (i<longitud){
        if (res.edad<arr[i].edad){
            res = arr[i];
        }
        i = i + 1;
    }
    return res;
}

persona_t persona_de_menor_altura(unsigned int longitud, persona_t arr[]){
    unsigned int i = 1;
    persona_t res = arr[0];
    while (i<longitud){
        if(res.altura>arr[i].altura){
            res = arr[i];
        }
        i = i + 1;
    }
    return res;
}

int main(void) {
    persona_t p1 = {.nombre="Paola", .edad=21, .altura=1.55, .peso=52};
    persona_t p2 = {.nombre="Luis", .edad=38, .altura=1.91, .peso=88};
    persona_t p3 = {.nombre="Julio", .edad=65, .altura=1.69, .peso=74};
    unsigned int longitud = 3;
    persona_t arr[] = {p1, p2, p3};
    printf("El peso promedio es %f\n", peso_promedio(longitud, arr));
    persona_t p = persona_de_mayor_edad(longitud, arr);
    printf("El nombre de la persona con mayor edad es %s\n", p.nombre);
    p = persona_de_menor_altura(longitud, arr);
    printf("El nombre de la persona con menor altura es %s\n", p.nombre);
    return 0;
}