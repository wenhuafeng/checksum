# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\src\checksum

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\src\checksum\build

# Include any dependencies generated for this target.
include CMakeFiles/securec_shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/securec_shared.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/securec_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/securec_shared.dir/flags.make

CMakeFiles/securec_shared.dir/secure/memset_s.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/memset_s.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/memset_s.c.obj: ../secure/memset_s.c
CMakeFiles/securec_shared.dir/secure/memset_s.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/securec_shared.dir/secure/memset_s.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/memset_s.c.obj -MF CMakeFiles\securec_shared.dir\secure\memset_s.c.obj.d -o CMakeFiles\securec_shared.dir\secure\memset_s.c.obj -c D:\src\checksum\secure\memset_s.c

CMakeFiles/securec_shared.dir/secure/memset_s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/memset_s.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\memset_s.c > CMakeFiles\securec_shared.dir\secure\memset_s.c.i

CMakeFiles/securec_shared.dir/secure/memset_s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/memset_s.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\memset_s.c -o CMakeFiles\securec_shared.dir\secure\memset_s.c.s

CMakeFiles/securec_shared.dir/secure/securecutil.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/securecutil.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/securecutil.c.obj: ../secure/securecutil.c
CMakeFiles/securec_shared.dir/secure/securecutil.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/securec_shared.dir/secure/securecutil.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/securecutil.c.obj -MF CMakeFiles\securec_shared.dir\secure\securecutil.c.obj.d -o CMakeFiles\securec_shared.dir\secure\securecutil.c.obj -c D:\src\checksum\secure\securecutil.c

CMakeFiles/securec_shared.dir/secure/securecutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/securecutil.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\securecutil.c > CMakeFiles\securec_shared.dir\secure\securecutil.c.i

CMakeFiles/securec_shared.dir/secure/securecutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/securecutil.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\securecutil.c -o CMakeFiles\securec_shared.dir\secure\securecutil.c.s

CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj: ../secure/secureprintoutput_a.c
CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj -MF CMakeFiles\securec_shared.dir\secure\secureprintoutput_a.c.obj.d -o CMakeFiles\securec_shared.dir\secure\secureprintoutput_a.c.obj -c D:\src\checksum\secure\secureprintoutput_a.c

CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\secureprintoutput_a.c > CMakeFiles\securec_shared.dir\secure\secureprintoutput_a.c.i

CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\secureprintoutput_a.c -o CMakeFiles\securec_shared.dir\secure\secureprintoutput_a.c.s

CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj: ../secure/sprintf_s.c
CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj -MF CMakeFiles\securec_shared.dir\secure\sprintf_s.c.obj.d -o CMakeFiles\securec_shared.dir\secure\sprintf_s.c.obj -c D:\src\checksum\secure\sprintf_s.c

CMakeFiles/securec_shared.dir/secure/sprintf_s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/sprintf_s.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\sprintf_s.c > CMakeFiles\securec_shared.dir\secure\sprintf_s.c.i

CMakeFiles/securec_shared.dir/secure/sprintf_s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/sprintf_s.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\sprintf_s.c -o CMakeFiles\securec_shared.dir\secure\sprintf_s.c.s

CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj: ../secure/vsnprintf_s.c
CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj -MF CMakeFiles\securec_shared.dir\secure\vsnprintf_s.c.obj.d -o CMakeFiles\securec_shared.dir\secure\vsnprintf_s.c.obj -c D:\src\checksum\secure\vsnprintf_s.c

CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\vsnprintf_s.c > CMakeFiles\securec_shared.dir\secure\vsnprintf_s.c.i

CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\vsnprintf_s.c -o CMakeFiles\securec_shared.dir\secure\vsnprintf_s.c.s

CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj: CMakeFiles/securec_shared.dir/flags.make
CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj: CMakeFiles/securec_shared.dir/includes_C.rsp
CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj: ../secure/vsprintf_s.c
CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj: CMakeFiles/securec_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj -MF CMakeFiles\securec_shared.dir\secure\vsprintf_s.c.obj.d -o CMakeFiles\securec_shared.dir\secure\vsprintf_s.c.obj -c D:\src\checksum\secure\vsprintf_s.c

CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.i"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\src\checksum\secure\vsprintf_s.c > CMakeFiles\securec_shared.dir\secure\vsprintf_s.c.i

CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.s"
	"D:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\x86_64-w64-mingw32-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\src\checksum\secure\vsprintf_s.c -o CMakeFiles\securec_shared.dir\secure\vsprintf_s.c.s

# Object files for target securec_shared
securec_shared_OBJECTS = \
"CMakeFiles/securec_shared.dir/secure/memset_s.c.obj" \
"CMakeFiles/securec_shared.dir/secure/securecutil.c.obj" \
"CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj" \
"CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj" \
"CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj" \
"CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj"

# External object files for target securec_shared
securec_shared_EXTERNAL_OBJECTS =

libsecurec.dll: CMakeFiles/securec_shared.dir/secure/memset_s.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/secure/securecutil.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/secure/secureprintoutput_a.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/secure/sprintf_s.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/secure/vsnprintf_s.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/secure/vsprintf_s.c.obj
libsecurec.dll: CMakeFiles/securec_shared.dir/build.make
libsecurec.dll: CMakeFiles/securec_shared.dir/linklibs.rsp
libsecurec.dll: CMakeFiles/securec_shared.dir/objects1.rsp
libsecurec.dll: CMakeFiles/securec_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\src\checksum\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C shared library libsecurec.dll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\securec_shared.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/securec_shared.dir/build: libsecurec.dll
.PHONY : CMakeFiles/securec_shared.dir/build

CMakeFiles/securec_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\securec_shared.dir\cmake_clean.cmake
.PHONY : CMakeFiles/securec_shared.dir/clean

CMakeFiles/securec_shared.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\src\checksum D:\src\checksum D:\src\checksum\build D:\src\checksum\build D:\src\checksum\build\CMakeFiles\securec_shared.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/securec_shared.dir/depend

