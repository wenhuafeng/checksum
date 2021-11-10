#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "log.h"
#include "hash_out.h"
#include "checksum_out.h"
#include "crc_out.h"

#define SOFTWARE_VERSION        "v1.0.1"
#define SOFTWARE_VERSION_LEN    (sizeof(__DATE__) + \
                                 sizeof(__TIME__) + \
                                 sizeof(SOFTWARE_VERSION) + 1)

void PrintVersionInfo(void)
{
    LOGI("%s %s %s\n", SOFTWARE_VERSION, __DATE__, __TIME__);
}

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

int main(int argc, char *argv[])
{
    int i;

    bool ret;
    size_t length = 0;
    uint8_t *fileData = NULL;

    printf("argc:%d\n", argc);
    for (i = 0; i < argc; i++) {
        printf("argv[%d]:%s\n", i, argv[i]);
    }

    ret = LogInit(LOG_LEVEL_ALL, 0);
    if (ret == EXIT_FAILURE) {
        printf("log init error!\n");
    }

    PrintVersionInfo();

    ret = ReadFile(argv[1], &fileData, &length);
    if (ret != EXIT_SUCCESS) {
        free(fileData);
        fileData = NULL;
        return EXIT_FAILURE;
    }
    if (strcmp("CHECKSUM", argv[2]) == 0) {
        ChecksumOut(fileData, length);
    } else if (strcmp("CRC32", argv[2]) == 0) {
        CrcOut(fileData, length);
    } else if (strcmp("SHA256", argv[2]) == 0) {
        Hash256Out(fileData, length);
    } else {
        ;
    }
    free(fileData);

    LogDeInit();
    system("PAUSE");

    return EXIT_SUCCESS;
}
