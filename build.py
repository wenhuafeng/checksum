#!/usr/bin/python

import os
import datetime
import shutil
from shutil import copyfile

BUILD_DIR = './build'

MKDIR_BUILD_DIR = 'mkdir build'
CMAKE_COMMAND   = 'cmake -G"MinGW Makefiles" ../'
MAKE_CLEAN      = 'make clean'
MAKE            = 'make -j8'

COPY_OUT_FILE = 'copy ./build/checksum.exe ./output'

def rm_build():
    # 删除build文件夹
    if os.path.exists(BUILD_DIR):
        shutil.rmtree(BUILD_DIR)

def build():
    # 编译项目
    os.system(MKDIR_BUILD_DIR)
    os.chdir(BUILD_DIR)
    os.system(CMAKE_COMMAND)
    os.system(MAKE_CLEAN)
    os.system(MAKE)

def copy_exe_file():
    os.chdir('../')
    #os.system(COPY_OUT_FILE)
    source = 'build/checksum.exe'
    target = 'output/checksum.exe'

    # adding exception handling
    try:
       copyfile(source, target)
    except IOError as e:
       print("Unable to copy file. %s" % e)
    except:
       print("Unexpected error:", sys.exc_info())

def checksum_hex_file():
    # 切换目录到
    os.chdir('./output')
    os.system('checksum.exe WSA319.hex CRC32 SHA256')

def main():
    start = datetime.datetime.now()

    rm_build()
    build()
    copy_exe_file()
    checksum_hex_file()

    end = datetime.datetime.now()
    print('run time: %s second' %(end - start))

if __name__ == "__main__":
    main()