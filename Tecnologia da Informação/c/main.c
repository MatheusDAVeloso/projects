#include <stdio.h>

// Necessário para ter a função "exit()"
#include <stdlib.h>

void checkIntSizeOf(int numberA) {
    if (numberA > 2147483647 || -2147483647 > numberA) {
        printf("Erro: este número excede o valor máximo de 4 bits que um \"int\" pode guardar");
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
    checkIntSizeOf(numberA / numberB);

    if (numberB == 0) {
        printf("Erro: não é possível dividir por 0");
        exit(1);
        return 0;
    }

    return numberA / numberB;
}

int main() {
    int feijao = 2147483648;


    checkIntSizeOf(feijao);



    return 0;
}