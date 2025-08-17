cmake_minimum_required(VERSION 3.16)
project(app)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp src/*.hpp)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g")

add_executable(app ${SOURCE_FILES})
target_link_libraries(app PRIVATE OpenGL glfw GLEW)

