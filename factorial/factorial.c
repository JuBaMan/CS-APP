#include <stdio.h>

long fact_do(long n) {
    long result = 1;
    do {
        result *= n;
        n--;
    } while (n > 1);
    return result;
}

void test_factorial_overflow() {
    int n = 1;
    int previous_factorial = 1;
    int current_factorial;
    do {
        current_factorial = previous_factorial * n;
        if (current_factorial / n == previous_factorial) {
            previous_factorial = current_factorial;
            n++;
        }
        else {
            printf("Overflow at n = %d\n", n);
            break;
        }
    } while (n > 0);
}

int main() {
    test_factorial_overflow();
    return 0;
}