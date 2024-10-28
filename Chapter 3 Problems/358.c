#include <stdio.h>

long least_significant_bit(long x) {
    return (x << 63) >> 63;
}

long decode2(long x, long y, long z) {
    y -= z;
    x *= y;
    long result = least_significant_bit(y);
    result ^= x;
    return result;
}

int main() {
    printf("decode2(0x1234567890ABCDEF) = 0x%lX\n", decode2(0x1234567890ABCDEF, 0x1, 0x0));
    // printf("decode2(0xFEDCBA0987654320) = 0x%lX\n", decode2(0xFEDCBA0987654320));

    return 0;
}

