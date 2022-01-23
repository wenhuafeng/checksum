#include <stdint.h>
#include <stdio.h>
#include "checksum_32.h"
#include "log.h"

void CHECKSUM_Out(uint8_t *data, size_t len)
{
    uint32_t out;

    out = MakeChecksum32(data, len);
    LOGI("\n-------------------------------------------------------------------------------\n");
    LOGI("CHECKSUM_OUTPUT:\n");
    LOGI("%x\n", out);
    LOGI("\n-------------------------------------------------------------------------------\n");
}