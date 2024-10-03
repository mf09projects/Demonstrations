#include "app.h"
#include <stdio.h>
#include <stdlib.h>

int random_function(int input) {
    int random_number = rand() % 10; // Generate a random number between 0 and 9

    // Branch 1: Check input value
    if (input < 0) {
        printf("Input is negative.\n");
        return -1;
    } else if (input == 0) {
        printf("Input is zero.\n");
        return 0;
    } else {
        printf("Input is positive.\n");
    }

    // Branch 2: Switch based on random number
    switch (random_number) {
        case 0:
            printf("Random number is zero.\n");
            break;
        case 1:
            printf("Random number is one.\n");
            break;
        case 2:
            printf("Random number is two.\n");
            break;
        case 3:
            printf("Random number is three.\n");
            break;
        case 4:
            printf("Random number is four.\n");
            break;
        case 5:
            printf("Random number is five.\n");
            break;
        case 6:
            printf("Random number is six.\n");
            break;
        case 7:
            printf("Random number is seven.\n");
            break;
        case 8:
            printf("Random number is eight.\n");
            break;
        case 9:
            printf("Random number is nine.\n");
            break;
        default:
            printf("This case should never be reached.\n");
            break;
    }

    // Return the random number for further processing
    return random_number;
}