#include "common.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "log.h"
#include "hash_out.h"
#include "checksum_out.h"
#include "crc32_out.h"
#include "crc16_ccitt_false_out.h"

static bool ReadFile(char *fileName, uint8_t **buffer, size_t *len)
{
    FILE *fp = NULL;
    size_t ret;
    size_t fileSize;
    bool status = EXIT_FAILURE;

    if ((*buffer != NULL) || (len == NULL)) {
        LOGE("read %s input parameter error!\n", fileName);
        goto quit_program;
    }

    fp = fopen(fileName, "rb");
    if (fp == NULL) {
        LOGE("open file: %s failed\n", fileName);
        goto quit_program;
    }

    if (fseek(fp, 0, SEEK_END) != EXIT_SUCCESS) {
        LOGE("fseek file: %s failed\n", fileName);
        goto quit_program;
    }
    fileSize = ftell(fp);
    LOGI("fseek file: %s fileSize: %ld\n", fileName, fileSize);

    *buffer = (char *)malloc(fileSize);
    if (buffer == NULL) {
        LOGE("malloc failed!\n");
        goto quit_program;
    }

    if (fseek(fp, 0, SEEK_SET) != EXIT_SUCCESS) {
        LOGE("fseek file: %s failed\n", fileName);
        goto quit_program;
    }
    ret = fread(*buffer, 1, fileSize, fp);
    if ((ferror(fp) != 0) || (fileSize != ret)) {
        LOGE("write file: %s failed, fileSize: %ld\n", fileName, ret);
        goto quit_program;
    }

    *len = fileSize;
    status = EXIT_SUCCESS;
    LOGI("read file: %s length: %ld\n", fileName, ret);

quit_program:
    if (fp != NULL) {
        fclose(fp);
        fp = NULL;
    }

    return status;
}

void CommonFunc(int argc, char *argv[])
{
    bool ret;
    size_t length = 0;
    uint8_t *fileData = NULL;

    ret = ReadFile(argv[1], &fileData, &length);
    if (ret != EXIT_SUCCESS) {
        free(fileData);
        fileData = NULL;
        return;
    }
    if (strcmp("CHECKSUM", argv[2]) == 0) {
        CHECKSUM_Out(fileData, length);
    } else if (strcmp("CRC16", argv[2]) == 0) {
        CRC16_CcittFalseOut(fileData, length);
    } else if (strcmp("CRC32", argv[2]) == 0) {
        CRC32_Out(fileData, length);
    } else if (strcmp("SHA256", argv[2]) == 0) {
        SHA256_Out(fileData, length);
    } else {
        ;
    }
    free(fileData);
}