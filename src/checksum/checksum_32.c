#include <stdint.h>
#include <stdio.h>

uint32_t MakeChecksum32(uint8_t *inData, size_t length)
{
    size_t len;
    uint32_t chk = 0;

    // 按照小端的方式计算4个字节的checksum
    len = length;
    while (len >= 4) {
        chk += (uint32_t)inData[0];
        chk += ((uint32_t)inData[1] << 8);
        chk += ((uint32_t)inData[2] << 16);
        chk += ((uint32_t)inData[3] << 24);

        inData += 4;
        len -= 4;
    }

    if (len > 0) {
        if (len == 1) {
            chk += (uint32_t)inData[0];
        } else if (len == 2) {
            chk += (uint32_t)inData[0];
            chk += ((uint32_t)inData[1] << 8);
        } else {
            chk += (uint32_t)inData[0];
            chk += ((uint32_t)inData[1] << 8);
            chk += ((uint32_t)inData[2] << 16);
        }
    }

    chk = ~chk;
    chk++;

    return chk;
}

