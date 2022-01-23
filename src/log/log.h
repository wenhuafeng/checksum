#ifndef LOGFILE_H
#define LOGFILE_H

#include <stdbool.h>

#define LOG_TAG "checksum"

enum LogLevel {
    LOG_LEVEL_OFF,
    LOG_LEVEL_FATAL,
    LOG_LEVEL_ERROR,
    LOG_LEVEL_WARN,
    LOG_LEVEL_INFO,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_ALL
};

bool LogInit(enum LogLevel level, int flag);
void LogDeInit(void);
void LogOut(enum LogLevel level, const char *format, ...);

#define LOGF(format, ...) \
    do { \
        LogOut(LOG_LEVEL_FATAL, "Fatal: [" LOG_TAG "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGE(format, ...) \
    do { \
        LogOut(LOG_LEVEL_ERROR, "Error: [" LOG_TAG "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGW(format, ...) \
    do { \
        LogOut(LOG_LEVEL_WARN,  "Warn:  [" LOG_TAG "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGI(format, ...) \
    do { \
        LogOut(LOG_LEVEL_INFO,  "Info:  [" LOG_TAG "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGD(format, ...) \
    do { \
        LogOut(LOG_LEVEL_DEBUG, "Debug: [" LOG_TAG "] " format "", ##__VA_ARGS__); \
    } while (0)

#endif
