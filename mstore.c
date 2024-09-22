#include <stdio.h>

void what_is_size_of_long() {
    printf("Size of long: %d\n", sizeof(long));
    printf("Size of int: %d\n", sizeof(int));
}

int main() {
    what_is_size_of_long();
}