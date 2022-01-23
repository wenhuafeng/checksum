#include <stdint.h>
#include <stdio.h>
#include "crc32.h"
#include "log.h"

void CRC32_Out(uint8_t *data, size_t len)
{
    uint32_t crc32;

    crc32 = CRC32_Calculate(data, len);
    LOGI("\n-------------------------------------------------------------------------------\n");
    LOGI("CRC32_OUTPUT:\n");
    LOGI("%x\n", crc32);
    LOGI("\n-------------------------------------------------------------------------------\n");
}
