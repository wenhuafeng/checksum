cmake_minimum_required(VERSION 3.0.0)

project(checksum)

set(PROJECT_VERSION 1.0.2)
set(CMAKE_BUILD_TYPE Release)

include_directories(src/checksum)
include_directories(src/common)
include_directories(src/crc/crc16)
include_directories(src/crc/crc32)
include_directories(src/hash256)
include_directories(src/log)

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
