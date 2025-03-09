#include <stdio.h>
#include <string.h>  
int main() {
    char respuesta[2];  
 printf("Este programa te saludará hasta que le indiques que pare\n");
    while (1) { 
        printf("¿Quieres que te salude? (si/no): ");
        scanf("%s", respuesta);

        if (strcmp(respuesta, "si") == 0) {
            printf("Hola!\n");
            continue;
        } 
        else if (strcmp(respuesta, "no") == 0) {
            printf("El programa terminará.\n");
            break;
        } 
        else {
            printf("Respuesta inválida. Solo puedes escribir 'si' o 'no'.\n");
        }
    }

    return 0;
}