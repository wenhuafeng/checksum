#include "crc32_out.h"
#include <stdint.h>
#include <stdio.h>
#include "crc32.h"
#include "log.h"

#define LOG_TAG "crc32"

void CRC32_Out(uint8_t *data, size_t len)
{
    uint32_t crc32;

    crc32 = CRC32_Calculate(data, len);
    LOGI(LOG_TAG, "%x\n", crc32);
}
