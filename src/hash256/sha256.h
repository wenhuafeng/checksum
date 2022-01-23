#ifndef SHA256_H
#define SHA256_H

#include <stdint.h>
#include <stdbool.h>
//#include <stddef.h>

bool CalcHash256Value(uint8_t *data, size_t len, uint8_t *outHash);

#endif
