#!/bin/bash

cp ../build/checksum.exe ../run

./checksum.exe WSA319.hex ALL
#./checksum.exe WSA319.hex CRC16
#./checksum.exe WSA319.hex CRC32
#./checksum.exe WSA319.hex SHA256
#./checksum.exe WSA319.hex CHECKSUM

function pause() {
        read -n 1 -p "$*" INP
        if [ $INP != '' ] ; then
                echo -ne '\b \n'
        fi
}

#使用时：
pause 'Press any key to continue...'
