cmake_minimum_required(VERSION 3.5)

project(IMGUI_WITH_OPENGL3)

add_executable(imgui_with_opengl3 "")

include(dependencies/CMakeLists.txt)

include(src/CMakeLists.txt)
