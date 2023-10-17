cmake_minimum_required(VERSION 3.18)

project(Facial-Attendence-Device)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "-O2")
# set(CMAKE_TOOLCHAIN_FILE ./piToolchain.cmake)

set(SRCS
    src/main.cpp
   )

find_package( OpenCV REQUIRED CONFIG)
include_directories( ${OpenCV_INCLUDE_DIRS} )

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(fadev ${SRCS})
target_link_libraries( fadev ${OpenCV_LIBS} Threads::Threads)
