# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "D:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "D:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:/src/checksum

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/src/checksum/build

# Include any dependencies generated for this target.
include CMakeFiles/checksum.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/checksum.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/checksum.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/checksum.dir/flags.make

CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj: ../src/checksum/checksum_32.c
CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj -MF CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj.d -o CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj -c D:/src/checksum/src/checksum/checksum_32.c

CMakeFiles/checksum.dir/src/checksum/checksum_32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/checksum/checksum_32.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/checksum/checksum_32.c > CMakeFiles/checksum.dir/src/checksum/checksum_32.c.i

CMakeFiles/checksum.dir/src/checksum/checksum_32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/checksum/checksum_32.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/checksum/checksum_32.c -o CMakeFiles/checksum.dir/src/checksum/checksum_32.c.s

CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj: ../src/checksum/checksum_out.c
CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj -MF CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj.d -o CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj -c D:/src/checksum/src/checksum/checksum_out.c

CMakeFiles/checksum.dir/src/checksum/checksum_out.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/checksum/checksum_out.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/checksum/checksum_out.c > CMakeFiles/checksum.dir/src/checksum/checksum_out.c.i

CMakeFiles/checksum.dir/src/checksum/checksum_out.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/checksum/checksum_out.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/checksum/checksum_out.c -o CMakeFiles/checksum.dir/src/checksum/checksum_out.c.s

CMakeFiles/checksum.dir/src/common/common.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/common/common.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/common/common.c.obj: ../src/common/common.c
CMakeFiles/checksum.dir/src/common/common.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/checksum.dir/src/common/common.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/common/common.c.obj -MF CMakeFiles/checksum.dir/src/common/common.c.obj.d -o CMakeFiles/checksum.dir/src/common/common.c.obj -c D:/src/checksum/src/common/common.c

CMakeFiles/checksum.dir/src/common/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/common/common.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/common/common.c > CMakeFiles/checksum.dir/src/common/common.c.i

CMakeFiles/checksum.dir/src/common/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/common/common.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/common/common.c -o CMakeFiles/checksum.dir/src/common/common.c.s

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj: ../src/crc/crc16/crc16_ccitt_false.c
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj -MF CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj.d -o CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj -c D:/src/checksum/src/crc/crc16/crc16_ccitt_false.c

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/crc/crc16/crc16_ccitt_false.c > CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.i

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/crc/crc16/crc16_ccitt_false.c -o CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.s

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj: ../src/crc/crc16/crc16_ccitt_false_out.c
CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj -MF CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj.d -o CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj -c D:/src/checksum/src/crc/crc16/crc16_ccitt_false_out.c

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/crc/crc16/crc16_ccitt_false_out.c > CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.i

CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/crc/crc16/crc16_ccitt_false_out.c -o CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.s

CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj: ../src/crc/crc32/crc32.c
CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj -MF CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj.d -o CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj -c D:/src/checksum/src/crc/crc32/crc32.c

CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/crc/crc32/crc32.c > CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.i

CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/crc/crc32/crc32.c -o CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.s

CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj: ../src/crc/crc32/crc32_out.c
CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj -MF CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj.d -o CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj -c D:/src/checksum/src/crc/crc32/crc32_out.c

CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/crc/crc32/crc32_out.c > CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.i

CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/crc/crc32/crc32_out.c -o CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.s

CMakeFiles/checksum.dir/src/hash256/sha256.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/hash256/sha256.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/hash256/sha256.c.obj: ../src/hash256/sha256.c
CMakeFiles/checksum.dir/src/hash256/sha256.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/checksum.dir/src/hash256/sha256.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/hash256/sha256.c.obj -MF CMakeFiles/checksum.dir/src/hash256/sha256.c.obj.d -o CMakeFiles/checksum.dir/src/hash256/sha256.c.obj -c D:/src/checksum/src/hash256/sha256.c

CMakeFiles/checksum.dir/src/hash256/sha256.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/hash256/sha256.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/hash256/sha256.c > CMakeFiles/checksum.dir/src/hash256/sha256.c.i

CMakeFiles/checksum.dir/src/hash256/sha256.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/hash256/sha256.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/hash256/sha256.c -o CMakeFiles/checksum.dir/src/hash256/sha256.c.s

CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj: ../src/hash256/sha256_out.c
CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj -MF CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj.d -o CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj -c D:/src/checksum/src/hash256/sha256_out.c

CMakeFiles/checksum.dir/src/hash256/sha256_out.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/hash256/sha256_out.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/hash256/sha256_out.c > CMakeFiles/checksum.dir/src/hash256/sha256_out.c.i

CMakeFiles/checksum.dir/src/hash256/sha256_out.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/hash256/sha256_out.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/hash256/sha256_out.c -o CMakeFiles/checksum.dir/src/hash256/sha256_out.c.s

CMakeFiles/checksum.dir/src/log/log.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/log/log.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/log/log.c.obj: ../src/log/log.c
CMakeFiles/checksum.dir/src/log/log.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/checksum.dir/src/log/log.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/log/log.c.obj -MF CMakeFiles/checksum.dir/src/log/log.c.obj.d -o CMakeFiles/checksum.dir/src/log/log.c.obj -c D:/src/checksum/src/log/log.c

CMakeFiles/checksum.dir/src/log/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/log/log.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/log/log.c > CMakeFiles/checksum.dir/src/log/log.c.i

CMakeFiles/checksum.dir/src/log/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/log/log.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/log/log.c -o CMakeFiles/checksum.dir/src/log/log.c.s

CMakeFiles/checksum.dir/src/checksum.c.obj: CMakeFiles/checksum.dir/flags.make
CMakeFiles/checksum.dir/src/checksum.c.obj: CMakeFiles/checksum.dir/includes_C.rsp
CMakeFiles/checksum.dir/src/checksum.c.obj: ../src/checksum.c
CMakeFiles/checksum.dir/src/checksum.c.obj: CMakeFiles/checksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/checksum.dir/src/checksum.c.obj"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/checksum.dir/src/checksum.c.obj -MF CMakeFiles/checksum.dir/src/checksum.c.obj.d -o CMakeFiles/checksum.dir/src/checksum.c.obj -c D:/src/checksum/src/checksum.c

CMakeFiles/checksum.dir/src/checksum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checksum.dir/src/checksum.c.i"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:/src/checksum/src/checksum.c > CMakeFiles/checksum.dir/src/checksum.c.i

CMakeFiles/checksum.dir/src/checksum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checksum.dir/src/checksum.c.s"
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:/src/checksum/src/checksum.c -o CMakeFiles/checksum.dir/src/checksum.c.s

# Object files for target checksum
checksum_OBJECTS = \
"CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj" \
"CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj" \
"CMakeFiles/checksum.dir/src/common/common.c.obj" \
"CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj" \
"CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj" \
"CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj" \
"CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj" \
"CMakeFiles/checksum.dir/src/hash256/sha256.c.obj" \
"CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj" \
"CMakeFiles/checksum.dir/src/log/log.c.obj" \
"CMakeFiles/checksum.dir/src/checksum.c.obj"

# External object files for target checksum
checksum_EXTERNAL_OBJECTS =

checksum.exe: CMakeFiles/checksum.dir/src/checksum/checksum_32.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/checksum/checksum_out.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/common/common.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/crc/crc16/crc16_ccitt_false_out.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/crc/crc32/crc32.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/crc/crc32/crc32_out.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/hash256/sha256.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/hash256/sha256_out.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/log/log.c.obj
checksum.exe: CMakeFiles/checksum.dir/src/checksum.c.obj
checksum.exe: CMakeFiles/checksum.dir/build.make
checksum.exe: libsecurec.a
checksum.exe: CMakeFiles/checksum.dir/linklibs.rsp
checksum.exe: CMakeFiles/checksum.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:/src/checksum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable checksum.exe"
	"D:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/checksum.dir/objects.a
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/ar.exe" cr CMakeFiles/checksum.dir/objects.a @CMakeFiles/checksum.dir/objects1.rsp
	"D:/Program Files/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/gcc.exe" -Wl,--whole-archive CMakeFiles/checksum.dir/objects.a -Wl,--no-whole-archive -o checksum.exe -Wl,--out-implib,libchecksum.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/checksum.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/checksum.dir/build: checksum.exe
.PHONY : CMakeFiles/checksum.dir/build

CMakeFiles/checksum.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/checksum.dir/cmake_clean.cmake
.PHONY : CMakeFiles/checksum.dir/clean

CMakeFiles/checksum.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/src/checksum D:/src/checksum D:/src/checksum/build D:/src/checksum/build D:/src/checksum/build/CMakeFiles/checksum.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/checksum.dir/depend

