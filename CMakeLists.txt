cmake_minimum_required(VERSION 3.0.0)

project(checksum)

set(PROJECT_VERSION 1.0.1)

include_directories(src/checksum)
include_directories(src/common)
include_directories(src/crc/crc16)
include_directories(src/crc/crc32)
include_directories(src/hash256)
include_directories(src/log)
include_directories(src/secure)

add_library(securec_static STATIC   src/secure/memset_s.c
                                    src/secure/securecutil.c
                                    src/secure/secureprintoutput_a.c
                                    src/secure/sprintf_s.c
                                    src/secure/vsnprintf_s.c
                                    src/secure/vsprintf_s.c)
set_target_properties(securec_static PROPERTIES OUTPUT_NAME securec)
set_target_properties(securec_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

add_library(securec_shared SHARED   src/secure/memset_s.c
                                    src/secure/securecutil.c
                                    src/secure/secureprintoutput_a.c
                                    src/secure/sprintf_s.c
                                    src/secure/vsnprintf_s.c
                                    src/secure/vsprintf_s.c)
set_target_properties(securec_shared PROPERTIES OUTPUT_NAME securec)
set_target_properties(securec_shared PROPERTIES CLEAN_DIRECT_OUTPUT 1)

aux_source_directory(src/checksum CHECKSUM)
aux_source_directory(src/common COMMON)
aux_source_directory(src/crc/crc16 CRC16)
aux_source_directory(src/crc/crc32 CRC32)
aux_source_directory(src/hash256 HASH256)
aux_source_directory(src/log LOG)
aux_source_directory(src MAIN)

add_executable(checksum ${CHECKSUM}
                        ${COMMON}
                        ${CRC16}
                        ${CRC32}
                        ${HASH256}
                        ${LOG}
                        ${MAIN})
target_link_libraries(checksum securec_static)
