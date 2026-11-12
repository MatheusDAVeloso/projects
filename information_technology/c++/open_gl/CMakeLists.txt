cmake_minimum_required(VERSION 3.22.1)
project(OpenGlCpp)

find_package(OpenGL REQUIRED)

add_executable(MyProgram)
target_sources(MyProgram
    PRIVATE
        src/glad.c
        src/config.h
        src/main.cpp
)

target_include_directories(MyProgram PRIVATE dependencies)
target_link_libraries(MyProgram glfw OpenGL::GL)