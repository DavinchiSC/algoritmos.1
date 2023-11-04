#include <stdio.h>
#include <limits.h>
#define N 4

void pedir_arreglo(int n_max, float a[]) {
    int i;
    i = 0;
    while(i<n_max){
        printf("introduzca un valor para la posicion %d\n", i);
        scanf("%f", &a[i]);
        i = i+1;
    }
}

float minimo (float x, float y) {
    float m;
    if (x>=y){
        m = y;
    }
    else {
        m = x;
    }
    return m;
}

float maximo (float x, float y) {
    float m;
    if (x<=y){
        m = y;
    }
    else {
        m = x;
    }
    return m;
}

typedef struct {
float maximo;
float minimo;
float promedio;
}datos_t;

datos_t stats(int tam, float a[]){
    datos_t st;
    int i;
    i = 0;
    st.maximo = INT_MIN;
    st.minimo = INT_MAX;
    st.promedio = 0;
    /*usé los límites de INT ya que float no tiene, espero sea válido*/
    while (i<tam){
        st.maximo = maximo(st.maximo,a[i]);
        st.minimo = minimo(st.minimo,a[i]);
        st.promedio = st.promedio + a[i];
        i = i + 1;
    }
    st.promedio = st.promedio / tam;
    return st;
}

int main (void) {
    float a[N];
    datos_t st;
    pedir_arreglo(N,a);
    st = stats(N,a);
    printf("el minimo es %f, el maximo %f y el promedio %f\n", st.minimo, st.maximo, st.promedio);
    return 0;
}