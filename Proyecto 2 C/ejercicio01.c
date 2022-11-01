#include <stdio.h>
#include <assert.h>
int pedirEntero(void){
  int x;
  printf("Intrduzca un entero\n");
  scanf("%d", &x);
  return x;
}  
void holaHasta(int n){
    int i;
    i = 0;
    while (i<n){
        printf("Hola\n");
        i = i + 1;
    }

}
int main (void){
    int x;
    x = pedirEntero();
    assert (x>0);
    holaHasta(x);
}