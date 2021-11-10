#include "log.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <time.h>
#include "securec.h"

#ifdef _WIN32
#include <windows.h>
#elif __linux__
#include <pthread.h>
#endif

#define MAX_LOG_NUM         31
#define LOG_FILENAME_SIZE   128
#define LOG_FILE_SIZE       1048576 /* 1M */
#define LOF_FILE_NAME       "log.txt"

#define LOG_BUF_LEN         (2048 - 1)
#define PRINTF_BUFFER_LEN   2048

#define TIMESTAMP_BASE_YEAR 1900

typedef struct {
    char fileName[LOG_FILENAME_SIZE];
    int deleteFlag;
    int fileLength;
    enum LogLevel traceLevel;
    FILE *fp;
} LogFile;

LogFile g_logFile;

#ifdef _WIN32
HANDLE g_hMutex = INVALID_HANDLE_VALUE;
#elif __linux__
pthread_mutex_t g_logMutex = PTHREAD_MUTEX_INITIALIZER;
#endif

static int LogLock(void)
{
#ifdef _WIN32
    return WaitForSingleObject(g_hMutex, INFINITE);
#elif __linux__
    return pthread_mutex_lock(&g_logMutex);
#endif
}

static int LogUnlock(void)
{
#ifdef _WIN32
    return ReleaseMutex(g_hMutex);
#elif __linux__
    return pthread_mutex_unlock(&g_logMutex);
#endif
}

static void LogTime(char *buffer, size_t len)
{
    int8_t ret;
    struct tm curData;
    time_t curTime;

    time(&curTime);

#ifdef _WIN32
    localtime_s(&curData, &curTime);
#elif __linux__
    localtime_r(&curTime, &curData);
#endif

    ret = sprintf_s(buffer, len, "[Time]%d-%02d-%02d %02d:%02d:%02d : ",
                    curData.tm_year + TIMESTAMP_BASE_YEAR, curData.tm_mon + 1,
                    curData.tm_mday, curData.tm_hour, curData.tm_min, curData.tm_sec);
    if (ret < 0) {
        printf("sprintf_s error!\n");
        return;
    }
}

static bool LogSizeCheck(FILE *fp)
{
    size_t filelen;

    if (fp == NULL) {
        return EXIT_FAILURE;
    }
    if (fseek(fp, 0, SEEK_END) != EXIT_SUCCESS) {
        printf("fseek file: %s failed\n", g_logFile.fileName);
        return EXIT_FAILURE;
    }
    filelen = ftell(fp);
    if (filelen > LOG_FILE_SIZE) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

void LogOut(enum LogLevel level, const char *format, ...)
{
    va_list args;
    size_t ret;
    char *buffer = NULL;
    char *printBuffer = NULL;

    if ((g_logFile.fp == NULL) || (g_logFile.traceLevel < level)) {
        printf("log out input parameter error!\n");
        return;
    }

    buffer = (char *)malloc(LOG_BUF_LEN);
    if (buffer == NULL) {
        printf("log out malloc error!\n");
        goto error_quit;
    }
    printBuffer = (char *)malloc(PRINTF_BUFFER_LEN);
    if (printBuffer == NULL) {
        printf("log out malloc error!\n");
        goto error_quit;
    }
    (void)memset_s(buffer, LOG_BUF_LEN, 0, LOG_BUF_LEN);
    (void)memset_s(printBuffer, PRINTF_BUFFER_LEN, 0, PRINTF_BUFFER_LEN);

    LogLock();
    va_start(args, format);
    if (vsnprintf_s(buffer, LOG_BUF_LEN, PRINTF_BUFFER_LEN, format, args) < 0) {
        va_end(args);
        goto error_quit;
    }
    va_end(args);

    LogTime(printBuffer, PRINTF_BUFFER_LEN);
    if (sprintf_s(printBuffer + strlen(printBuffer), PRINTF_BUFFER_LEN, "%s", buffer) < 0) {
        goto error_quit;
    }
    printf("%s", printBuffer);

    ret = fwrite(printBuffer, 1, strlen(printBuffer), g_logFile.fp);
    if ((ferror(g_logFile.fp) != 0) || (strlen(printBuffer) != ret)) {
        printf("log out fwrite error!\n");
    }
    if (LogSizeCheck(g_logFile.fp) != EXIT_SUCCESS) {
        LogInit(g_logFile.traceLevel, 1);
    }
    LogUnlock();

error_quit:
    if (buffer != NULL) {
        free(buffer);
        buffer = NULL;
    }
    if (printBuffer != NULL) {
        free(printBuffer);
        printBuffer = NULL;
    }
}

bool LogInit(enum LogLevel level, int flag)
{
    char fileName[LOG_FILENAME_SIZE];
    struct tm curData;
    time_t curTime;

    (void)memset_s(fileName, sizeof(fileName), 0, sizeof(fileName));
    if (flag == 0) {
        g_logFile.fileLength = 0;
        g_logFile.deleteFlag = 0;
        g_logFile.traceLevel = level;
        g_logFile.fp = NULL;
        (void)memset_s(g_logFile.fileName, sizeof(g_logFile.fileName), 0, sizeof(g_logFile.fileName));
    }

    time(&curTime);
#ifdef _WIN32
    g_hMutex = CreateMutex(NULL, false, NULL);
    localtime_s(&curData, &curTime);
#elif __linux__
    localtime_r(&curTime, &curData);
#endif
    if (sprintf_s(fileName, sizeof(fileName), "%s", LOF_FILE_NAME) < 0) {
        return EXIT_FAILURE;
    }
    if (g_logFile.fp != NULL) {
        fclose(g_logFile.fp);
        g_logFile.fp = NULL;
    }
    g_logFile.fp = fopen(fileName, "w+b");
    if (g_logFile.fp == NULL) {
        return EXIT_FAILURE;
    }
    g_logFile.fileLength++;
    printf("fopen log file succeed\n");

    return EXIT_SUCCESS;
}

void LogDeInit(void)
{
#ifdef _WIN32
    CloseHandle(g_hMutex);
    g_hMutex = 0x00;
#elif __linux__
    pthread_mutex_destroy(&g_logMutex);
    g_logMutex = 0x00;
#endif
    if (g_logFile.fp != NULL) {
        if (fclose(g_logFile.fp) == EOF) {
            printf("close log file fail\n");
        } else {
            printf("close log file succeed\n");
        }
        g_logFile.fp = NULL;
    }
}
