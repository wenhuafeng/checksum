#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "log.h"
#include "common.h"

#define SOFTWARE_VERSION        "v1.0.1"
#define SOFTWARE_VERSION_LEN    (sizeof(__DATE__) + \
                                 sizeof(__TIME__) + \
                                 sizeof(SOFTWARE_VERSION) + 1)

void PrintVersionInfo(void)
{
    LOGI("%s %s %s\n", SOFTWARE_VERSION, __DATE__, __TIME__);
}

int main(int argc, char *argv[])
{
    uint8_t i;
    bool ret;

    ret = LogInit(LOG_LEVEL_ALL, 0);
    if (ret == EXIT_FAILURE) {
        printf("log init error!\n");
    }

    LOGI("argc:%d\n", argc);
    for (i = 0; i < argc; i++) {
        LOGI("argv[%d]:%s\n", i, argv[i]);
    }

    PrintVersionInfo();
    CommonFunc(argc, argv);

    LogDeInit();
    //system("PAUSE");

    return EXIT_SUCCESS;
}
