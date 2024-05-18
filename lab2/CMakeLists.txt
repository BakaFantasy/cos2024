cmake_minimum_required(VERSION 3.29)
project(lab2 C ASM_NASM)

set(CMAKE_C_STANDARD 17)

include_directories(include)

#add_definitions(-DDEBUG)

add_subdirectory(src)
