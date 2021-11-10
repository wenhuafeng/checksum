#include <stdint.h>
#include <stdio.h>
#include "checksum_32.h"

void ChecksumOut(uint8_t *data, size_t len)
{
    uint32_t out;

    out = MakeChecksum32(data, len);
    printf("\n----------------------\n");
    printf("CHECKSUM_OUTPUT:\n");
    printf("%x", out);
    printf("\n----------------------\n");
}