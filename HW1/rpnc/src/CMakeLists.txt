cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

include_directories(${PROJECT_BINARY_DIR}/src)

add_library(rpn rpn.c stack.c)