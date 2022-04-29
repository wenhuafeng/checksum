#include <stdint.h>
#include "checksum_32.h"
#include "log.h"

#define LOG_TAG "checksum"

void CHECKSUM_Out(uint8_t *data, size_t len)
{
    uint32_t out;

    out = MakeChecksum32(data, len);
    LOGI(LOG_TAG, "\n--------------------------------------------------------------------------------------------------------------\n");
    LOGI(LOG_TAG, "CHECKSUM_OUTPUT:\n");
    LOGI(LOG_TAG, "%x\n", out);
    LOGI(LOG_TAG, "\n--------------------------------------------------------------------------------------------------------------\n");
}