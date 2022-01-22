#include <stdint.h>
#include <stdio.h>
#include "crc16_ccitt_false.h"
#include "log.h"

#define CRC16_CCITT_FALSE_INIT 0xffff

void CRC16_CcittFalseOut(uint8_t *data, size_t len)
{
    uint16_t crc16;

    crc16 = CRC16_CcittFalseCalculate(data, len, CRC16_CCITT_FALSE_INIT);
    LOGI("\n-------------------------------------------------------------------------------\n");
    LOGI("CRC16_CCITT_FALSE_OUTPUT:\n");
    LOGI("%x\n", crc16);
    LOGI("\n-------------------------------------------------------------------------------\n");

    /*
    uint8_t testTable[] = { 0x08, 0x00, 0x09, 0xff, 0xf6, 0xc0, 0xc6, 0x40, 0x06, 0x00, 0x00, 0x08, 0x00, 0x10, 0x7f };
    crc16 = CRC16_CcittFalseCalculate(testTable, sizeof(testTable), CRC16_CCITT_FALSE_INIT);
    LOGI("\n-------------------------------------------------------------------------------\n");
    LOGI("CRC16_CCITT_FALSE_OUTPUT:\n");
    LOGI("%x\n", crc16);
    LOGI("\n-------------------------------------------------------------------------------\n");
    */
}
