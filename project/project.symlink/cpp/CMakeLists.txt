cmake_minimum_required(VERSION 3.0)
project(template)
 
#Include any headers.
include_directories(include)
 
file(GLOB SOURCES "src/*.cpp")
 
add_executable(template ${SOURCES})
