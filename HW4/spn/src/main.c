#include <stdio.h>
#include <stdlib.h>
#include "spn.h"

int main() {
    ECBencrypt("aba", 0x98267351L);
    CBCencrypt("hello world", 0x98267351L, 0x42);
    CBCdecrypt("0x3451f6fd3b6126e0ae5815", 0x98267351L, 0x42);
    return 0;
}