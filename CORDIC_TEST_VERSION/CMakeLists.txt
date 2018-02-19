cmake_minimum_required(VERSION 3.8)
project(CORDIC_TEST_VERSION)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        cordic_t.cpp
        cordic_t.h
        cordic_t_prb.cpp)

add_executable(CORDIC_TEST_VERSION ${SOURCE_FILES})