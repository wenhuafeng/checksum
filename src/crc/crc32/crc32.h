#ifndef CRC32_H
#define CRC32_H

#include <stdint.h>

uint32_t CRC32_Calculate(const uint8_t *start, size_t length);

#endif
