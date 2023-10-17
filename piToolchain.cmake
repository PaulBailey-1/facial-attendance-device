set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_GENERATOR "Unix Makefiles")
message("generator is set to ${CMAKE_GENERATOR}")

set(TOOLCHAIN_DIR /usr/bin)
set(CMAKE_SYSROOT /home/paul/raspberrypi/sysroot)
link_directories(${CMAKE_SYSROOT}/usr/lib/aarch64-linux-gnu)

set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/aarch64-linux-gnu-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_CROSSCOMPILING true)
