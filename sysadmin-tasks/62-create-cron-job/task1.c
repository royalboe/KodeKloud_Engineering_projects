#include <stdio.h>

int main() {
    FILE *file = fopen("hw2/footprint.txt", "w");
    if (file != NULL) {
        fputs("CompSci657/790-HW2-Nancy-Olamide-Adeyelu-Successful Hack\n", file);
        fclose(file);
    }

    printf("CompSci657/790-HW2-Nancy-Olamide-Adeyelu-Successful Hack\n");
    return 0;
}
