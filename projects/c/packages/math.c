#include <stdio.h>
// Necessário para ter a função "exit()"
#include <stdlib.h>

static void checkIntSizeOf(long long int number) {
    if (number > 2147483647 || -2147483647 > number) {
        printf("Erro: este número excede o valor máximo de 4 bytes que um \"int\" pode guardar");
        exit(1);
        return;
    }
}

int sum(int numberA, int numberB) {
    checkIntSizeOf(numberA + numberB);

    return numberA + numberB;
}

int subtract(int numberA, int numberB) {
    checkIntSizeOf(numberA - numberB);

    return numberA - numberB;
}

int multiply(int numberA, int numberB) {
    checkIntSizeOf(numberA * numberB);

    return numberA * numberB;
}

double divide(int numberA, int numberB) {
    if (numberB == 0) {
        printf("Erro: não é possível dividir por 0");
        exit(1);
        return 0;
    }

    checkIntSizeOf(numberA / numberB);

    return numberA / numberB;
}