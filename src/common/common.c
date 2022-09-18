#include "common.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <sys/stat.h>
#include <time.h>
#include "log.h"
#include "sha256_out.h"
#include "checksum_out.h"
#include "crc32_out.h"
#include "crc16_ccitt_false_out.h"

#define LOG_TAG "common"

typedef void (*CmdHandler)(uint8_t *data, size_t len);
typedef struct {
    char *cmd;
    CmdHandler handler;
} CmdHandlerType;

static bool ReadFile(char *fileName, uint8_t **buffer, size_t *len)
{
    FILE *fp = NULL;
    size_t ret;
    size_t fileSize;
    bool status = EXIT_FAILURE;

    if ((*buffer != NULL) || (len == NULL)) {
        LOGE(LOG_TAG, "read %s input parameter error!\n", fileName);
        goto quit_program;
    }

    fp = fopen(fileName, "rb");
    if (fp == NULL) {
        LOGE(LOG_TAG, "open file: %s failed\n", fileName);
        goto quit_program;
    }

    if (fseek(fp, 0, SEEK_END) != EXIT_SUCCESS) {
        LOGE(LOG_TAG, "fseek file: %s failed\n", fileName);
        goto quit_program;
    }
    fileSize = ftell(fp);
    // LOGI(LOG_TAG, "fseek file: %s fileSize: %ld\n", fileName, fileSize);

    *buffer = (char *)malloc(fileSize);
    if (*buffer == NULL) {
        LOGE(LOG_TAG, "malloc failed!\n");
        goto quit_program;
    }

    if (fseek(fp, 0, SEEK_SET) != EXIT_SUCCESS) {
        LOGE(LOG_TAG, "fseek file: %s failed\n", fileName);
        goto quit_program;
    }
    ret = fread(*buffer, 1, fileSize, fp);
    if ((ferror(fp) != 0) || (fileSize != ret)) {
        LOGE(LOG_TAG, "write file: %s failed, fileSize: %ld\n", fileName, ret);
        goto quit_program;
    }

    *len   = fileSize;
    status = EXIT_SUCCESS;
    LOGI(LOG_TAG, "%s file size: %ld\n", fileName, ret);

quit_program:
    if (fp != NULL) {
        fclose(fp);
        fp = NULL;
    }

    return status;
}

static void PrintFileCreateTime(char *fileName)
{
    char buf[65];
    struct stat sb;
    struct tm *time;

    stat(fileName, &sb);
    time = localtime(&sb.st_mtime);
    sprintf(buf, "%04d-%02d-%02d %02d:%02d:%02d", time->tm_year + 1900, time->tm_mon + 1, time->tm_mday, time->tm_hour,
            time->tm_min, time->tm_sec);
    LOGI(LOG_TAG, "%s modify time: %s\n", fileName, buf);
}

static const CmdHandlerType g_cmdTable[] = {
    { "CHECKSUM", CHECKSUM_Out },
    { "CRC16", CRC16_CcittFalseOut },
    { "CRC32", CRC32_Out },
    { "SHA256", SHA256_Out },
};

void CommonFunc(int argc, char *argv[])
{
    bool ret;
    uint8_t i;
    uint8_t tableLength;
    size_t length     = 0;
    uint8_t *fileData = NULL;

    PrintFileCreateTime(argv[1]);
    ret = ReadFile(argv[1], &fileData, &length);
    if (ret != EXIT_SUCCESS) {
        free(fileData);
        fileData = NULL;
        return;
    }

    tableLength = sizeof(g_cmdTable) / sizeof(g_cmdTable[0]);
    if (strcmp("ALL", argv[2]) == 0) {
        for (i = 0; i < tableLength; i++) {
            g_cmdTable[i].handler(fileData, length);
        }
    } else {
        for (i = 0; i < tableLength; i++) {
            if (strcmp(g_cmdTable[i].cmd, argv[2]) == 0) {
                g_cmdTable[i].handler(fileData, length);
                break;
            }
        }
    }

    free(fileData);
}