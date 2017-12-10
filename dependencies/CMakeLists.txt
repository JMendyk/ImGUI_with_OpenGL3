########## External Dependencies ##########

##### OpenGL and GLUT #####
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

if (OpenGL_FOUND AND GLUT_FOUND)
        include_directories(${OpenGL_INCLUDE_DIRS})
        target_link_libraries(imgui_with_opengl3 ${OpenGL_LIBRARIES})
        include_directories(${GLUT_INCLUDE_DIRS})
        target_link_libraries(imgui_with_opengl3 ${GLUT_LIBRARIES})
    else()
        message(SEND_ERROR "OpenGL or GLUT not found. Make sure that they are installed.")
endif (OpenGL_FOUND AND GLUT_FOUND)

########## Included Dependencies ##########

set(DEPS_DIR ${CMAKE_CURRENT_LIST_DIR})

##### GLFW #####
set(GLFW_DIR ${DEPS_DIR}/glfw)

# Disable generation of docs, tests and examples
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(${GLFW_DIR})
target_link_libraries(imgui_with_opengl3 glfw)

##### GL3W #####
set(GL3W_DIR ${DEPS_DIR}/gl3w)

target_include_directories(imgui_with_opengl3 PUBLIC ${GL3W_DIR})
target_sources(imgui_with_opengl3 PUBLIC ${GL3W_DIR}/GL/gl3w.c)

##### ImGUI #####
set(IMGUI_DIR ${DEPS_DIR}/imgui)

target_include_directories(imgui_with_opengl3 PUBLIC ${IMGUI_DIR})
target_sources(imgui_with_opengl3
    PUBLIC
        ${IMGUI_DIR}/imgui.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        # Uncomment if you want to use demo functionalities
        ${IMGUI_DIR}/imgui_demo.cpp
)

##### imgui_impl_glfw_gl3 #####
set(IMGUI_IMPL_GLFW_GL3_DIR ${DEPS_DIR}/imgui_impl_glfw_gl3)

target_include_directories(imgui_with_opengl3 PUBLIC ${IMGUI_IMPL_GLFW_GL3_DIR})
target_sources(imgui_with_opengl3 
    PUBLIC
        # (probably) not needed
        # ${IMGUI_IMPL_GLFW_GL3_DIR}/imgui_impl_glfw_gl3.h
        ${IMGUI_IMPL_GLFW_GL3_DIR}/imgui_impl_glfw_gl3.cpp
)

########## End of Dependencies ##########