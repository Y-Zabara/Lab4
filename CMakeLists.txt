# Початковий CMakeLists.txt

# Мінімальна версія CMake
cmake_minimum_required(VERSION 3.10)

# Назва проекту
project(MyProject)

add_library(mylibrary STATIC foo.cpp)

add_executable(myexecutable hello.cpp)

target_link_libraries(myexecutable PRIVATE mylibrary)

