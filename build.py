#!/usr/bin/python

import os
import subprocess
import shutil
from pathlib import Path
import logging
import time

BUILD_DIR = Path('./build')

def rm_build():
    if BUILD_DIR.exists():
        shutil.rmtree(BUILD_DIR)

def build():
    BUILD_DIR.mkdir(parents=True, exist_ok=True)
    subprocess.run(['cmake', '-G', 'Unix Makefiles', '..'], cwd=BUILD_DIR)
    subprocess.run(['make', 'clean'], cwd=BUILD_DIR)
    subprocess.run(['make', '-j8'], cwd=BUILD_DIR)

def copy_exe_file():
    source = BUILD_DIR / 'checksum.exe'
    target = Path('output/checksum.exe')
    target.parent.mkdir(parents=True, exist_ok=True)

    try:
       shutil.copyfile(source, target)
    except Exception as e:
       logging.error("Unable to copy file. %s", e)

def checksum_hex_file():
    subprocess.run(['output/checksum.exe', 'WSA319.hex', 'CRC32', 'SHA256'], cwd=Path('./output'))

def main():
    start = time.perf_counter()

    rm_build()
    build()
    copy_exe_file()
    checksum_hex_file()

    end = time.perf_counter()
    logging.info('run time: %s second', end - start)

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    main()
