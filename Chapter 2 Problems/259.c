#include <stdio.h>

#define BYTE 8
#define BIT_PATTERN_1 0x11
#define BIT_PATTERN_2 0x22

int is_little_endian() {
    unsigned int x = BIT_PATTERN_1;
    int bytes;
    for (bytes = 2; bytes <= sizeof(int); bytes++) {
        x <<= BYTE;
        if (bytes != sizeof(int)) {
            x += BIT_PATTERN_1;
        }
        else {
            x += BIT_PATTERN_2; 
        }
                
        printf("After byte %d: x = 0x%X\n", bytes, x);
    }

    unsigned char *first_byte = (unsigned char *) &x;
    unsigned char *last_byte = ((unsigned char *) &x) + sizeof(int) - 1;

    return *first_byte == BIT_PATTERN_1;
}

int main() {
    if (is_little_endian()) {
        printf("The machine is big-endian.\n");
    }
    else {
        printf("The machine is little-endian.\n");
    }

    return 0;
}