#ifndef LOGFILE_H
#define LOGFILE_H

#include <stdbool.h>

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

#define LOGF(tag, format, ...)                                                 \
    do {                                                                       \
        LogOut(LOG_LEVEL_FATAL, "Fatal: [" tag "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGE(tag, format, ...)                                                 \
    do {                                                                       \
        LogOut(LOG_LEVEL_ERROR, "Error: [" tag "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGW(tag, format, ...)                                                \
    do {                                                                      \
        LogOut(LOG_LEVEL_WARN, "Warn: [" tag "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGI(tag, format, ...)                                                \
    do {                                                                      \
        LogOut(LOG_LEVEL_INFO, "Info: [" tag "] " format "", ##__VA_ARGS__); \
    } while (0)
#define LOGD(tag, format, ...)                                                 \
    do {                                                                       \
        LogOut(LOG_LEVEL_DEBUG, "Debug: [" tag "] " format "", ##__VA_ARGS__); \
    } while (0)

#endif
