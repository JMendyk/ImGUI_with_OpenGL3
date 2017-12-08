cmake_minimum_required(VERSION 3.2)

project(IMGUI_WITH_OPENGL3)

if (NOT ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message( FATAL_ERROR "Out-of-source builds are currently not allowed. See https://github.com/JMendyk/ImGUI_with_OpenGL3/issues/1." )
endif()

add_executable(imgui_with_opengl3 "")

include(dependencies/CMakeLists.txt)

include(src/CMakeLists.txt)
