#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Thread-local variable
__thread int tls_var = 0;

void* threadFunction(void* arg) {
    int thread_num = *(int*)arg;
    tls_var = thread_num;
    printf("Thread %d, TLS variable: %d\n", thread_num, tls_var);
    return NULL;
}

int main() {
    const int size = 5;
    int *arr;

    // Dynamic memory allocation (Heap)
    arr = (int *)malloc(size * sizeof(int));
    if (arr == NULL) {
        perror("Failed to allocate memory");
        return 1;
    }

    // Populate array and print (using Stack memory)
    printf("Array elements: ");
    for (int i = 0; i < size; i++) {
        arr[i] = i * 2; // Use stack memory
        printf("%d ", arr[i]);
    }
    printf("\n");

    // Thread creation to demonstrate TLS
    pthread_t threads[size];
    int thread_nums[size];
    for (int i = 0; i < size; i++) {
        thread_nums[i] = i;
        if (pthread_create(&threads[i], NULL, threadFunction, &thread_nums[i]) != 0) {
            perror("Failed to create thread");
            free(arr);
            return 2;
        }
    }

    // Join threads
    for (int i = 0; i < size; i++) {
        pthread_join(threads[i], NULL);
    }

    // Free dynamically allocated memory
    free(arr);

    return 0;
}
