cmake_minimum_required(VERSION 3.8)
project(SVM_Classifier)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        alpha.h
        classifier.cpp
        classifier.h
        classifier_tb.cpp
        cordic.cpp
        cordic.h
        dot_p.cpp
        dot_p.h
        SV.h
        testData.h)

add_executable(SVM_Classifier ${SOURCE_FILES})