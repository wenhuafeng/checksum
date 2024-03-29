#include "crc16_ccitt_false_out.h"
#include <stdint.h>
#include <stdio.h>
#include "crc16_ccitt_false.h"
#include "log.h"

#define LOG_TAG "crc16_ccitt_false"

#define CRC16_CCITT_FALSE_INIT 0xffff

void CRC16_CcittFalseOut(uint8_t *data, size_t len)
{
    uint16_t crc16;

    crc16 = CRC16_CcittFalseCalculate(data, len, CRC16_CCITT_FALSE_INIT);
    LOGI(LOG_TAG, "%x\n", crc16);
}
