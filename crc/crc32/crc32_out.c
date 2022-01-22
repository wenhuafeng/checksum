#include <stdint.h>
#include <stdio.h>
#include "crc32.h"

void CRC32_Out(uint8_t *data, size_t len)
{
    uint32_t crc32;

    crc32 = CRC32_Calculate(data, len);
    printf("\n----------------------\n");
    printf("CRC32_OUTPUT:\n");
    printf("%x", crc32);
    printf("\n----------------------\n");
}
