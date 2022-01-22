cmake_minimum_required(VERSION 3.0.0)

project(checksum)

set(PROJECT_VERSION 1.0.1)

include_directories(src)
include_directories(secure)
include_directories(log)
include_directories(hash256)
include_directories(crc/crc16)
include_directories(crc/crc32)
include_directories(checksum)

add_library(securec_static STATIC   secure/memset_s.c
                                    secure/securecutil.c
                                    secure/secureprintoutput_a.c
                                    secure/sprintf_s.c
                                    secure/vsnprintf_s.c
                                    secure/vsprintf_s.c)
set_target_properties(securec_static PROPERTIES OUTPUT_NAME securec)
set_target_properties(securec_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

add_library(securec_shared SHARED   secure/memset_s.c
                                    secure/securecutil.c
                                    secure/secureprintoutput_a.c
                                    secure/sprintf_s.c
                                    secure/vsnprintf_s.c
                                    secure/vsprintf_s.c)
set_target_properties(securec_shared PROPERTIES OUTPUT_NAME securec)
set_target_properties(securec_shared PROPERTIES CLEAN_DIRECT_OUTPUT 1)

aux_source_directory(src CHECKSUM)
aux_source_directory(log LOG)
aux_source_directory(hash256 HASH256)
aux_source_directory(crc/crc16 CRC16)
aux_source_directory(crc/crc32 CRC32)
aux_source_directory(checksum CHECKSUM)

add_executable(checksum ${CHECKSUM}
                        ${LOG}
                        ${HASH256}
                        ${CRC16}
                        ${CRC32}
                        ${CHECKSUM})
target_link_libraries(checksum securec_static)
