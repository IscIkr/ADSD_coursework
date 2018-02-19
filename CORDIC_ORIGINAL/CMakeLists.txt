cmake_minimum_required(VERSION 3.8)
project(CORDIC)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES cordic.h cordic.cpp cordic_prb.cpp)
add_executable(CORDIC ${SOURCE_FILES})