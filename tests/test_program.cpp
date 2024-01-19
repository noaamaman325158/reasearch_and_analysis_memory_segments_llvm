#include <stdio.h>
#include <stdlib.h>

int main() {
    int *arr = NULL;
    int size = 5;

    for (int i = 0; i < size; i++) {
        arr = (int *)malloc(sizeof(int));
        if (arr == NULL) {
            return 1;
        }

        *arr = i;
    }

    for (int i = 0; i < size; i++) {
        free(arr);
    }

    return 0;
}

