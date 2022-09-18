#include "checksum_out.h"
#include <stdint.h>
#include <stdio.h>
#include "checksum_32.h"
#include "log.h"

#define LOG_TAG "checksum"

void CHECKSUM_Out(uint8_t *data, size_t len)
{
    uint32_t out;

    out = MakeChecksum32(data, len);
    LOGI(LOG_TAG, "%x\n", out);
}