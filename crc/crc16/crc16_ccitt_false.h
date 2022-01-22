#ifndef CRC16_CCITT_FALSE_H
#define CRC16_CCITT_FALSE_H

#include <stdint.h>

uint16_t CRC16_CcittFalseCalculate(const uint8_t *data, size_t len, uint16_t init);

#endif
