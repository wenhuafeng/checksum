#include <stdint.h>
#include <stdio.h>
#include "sha256.h"
#include "log.h"

#define SHA256_BYTE_LEN 32
#define SHA256_ASCII_LEN 64
#define DIGIT_LETTER_ASCII_OFFSET 0x30
#define LARGE_LETTER_ASCII_OFFSET 0x37
#define SMALL_LETTER_ASCII_OFFSET 0x57

static char HexToChar(uint8_t hex)
{
    char desc;

    if ((hex >= 0) && (hex <= 9)) {
        desc = hex + DIGIT_LETTER_ASCII_OFFSET;
    } else if ((hex >= 0xA) && (hex <= 0xF)) {
        desc = hex + SMALL_LETTER_ASCII_OFFSET;
    }

    return desc;
}

static void HexToCharString(char *ascii, uint8_t *hex, uint8_t len)
{
    uint8_t i;
    uint8_t halfByte;

    for (i = 0; i < len; i++) {
        halfByte = (uint8_t)((hex[i] >> 4) & 0x0f);
        ascii[i * 2] = HexToChar(halfByte);
        halfByte = (uint8_t)(hex[i] & 0x0f);
        ascii[i * 2 + 1] = HexToChar(halfByte);
    }
}

void SHA256_Out(uint8_t *data, size_t len)
{
    uint8_t i;
    uint8_t out[SHA256_BYTE_LEN] = { 0 };
    char charTable[SHA256_ASCII_LEN + 1] = { 0 }; /* string has an end character '\0' */

    CalcHash256Value(data, len, out);
    LOGI("\n-------------------------------------------------------------------------------\n");
    LOGI("HASH256_OUTPUT:\n");
    HexToCharString(charTable, out, SHA256_BYTE_LEN);
    LOGI("%s\n", charTable);
    LOGI("\n-------------------------------------------------------------------------------\n");
}
