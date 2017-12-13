cmake_minimum_required(VERSION 3.2)

project(IMGUI_WITH_OPENGL3)

set(EXECUTABLE_NAME imgui_with_opengl3)
add_executable(${EXECUTABLE_NAME} "")

include(dependencies/CMakeLists.txt)

include(src/CMakeLists.txt)
