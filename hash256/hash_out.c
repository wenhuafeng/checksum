#include <stdint.h>
#include <stdio.h>
#include "sha256.h"

#define SHA256_BYTE_LEN 32

void Hash256Out(uint8_t *data, size_t len)
{
    uint8_t i;
    uint8_t out[SHA256_BYTE_LEN] = {0};

    CalcHash256Value(data, len, out);
    printf("\n-------------------------------------------------------------------------------\n");
    printf("HASH256_OUTPUT:\n");
    for (i = 0; i < sizeof(out); i++) {
        printf("%x", out[i]);
    }
    printf("\n-------------------------------------------------------------------------------\n");
}
