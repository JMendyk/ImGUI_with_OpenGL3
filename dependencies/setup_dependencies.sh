#!/usr/bin/env bash

# This script's purpose is downloading dependencies,
# performing required configuration/compilation/purging
# and organising them into desired form.
histfile=`pwd`/dependencies_history.txt

function log_dependency {
    info=`git log --pretty=format:"%h, %ad : %s" | head -n 1`
    echo "Dependency: $1" >> $histfile
    echo $info >> $histfile
}

rm -rf gl3w gl3w_repo \
       glfw glfw_repo \
       imgui imgui_repo \
       imgui_impl_glfw_gl3


LC_TIME_copy=$LC_TIME
LC_TIME=en_US.UTF-8
header="Updating dependencies - $(date "+%a %b %d %T %Y %z")"
echo $header >> $histfile
LC_TIME=$LC_TIME_copy

##### GLFW #####
git clone https://github.com/glfw/glfw.git glfw_repo
cd glfw_repo
    git checkout 3.2.1
    log_dependency glfw
    rm -rf .git .gitignore .github docs examples tests .appveyor.yml .travis.yml
cd ..
mv glfw_repo glfw

##### GL3W #####
git clone https://github.com/skaslev/gl3w.git gl3w_repo
cd gl3w_repo
    git checkout master
    log_dependency gl3w
    cmake . && make
    rm -rf .git .gitignore
cd ..
mv gl3w_repo gl3w

##### ImGUI #####
git clone https://github.com/ocornut/imgui.git imgui_repo
mkdir imgui_impl_glfw_gl3
cd imgui_repo
    git checkout v1.52
    log_dependency imgui
    cp examples/opengl3_example/imgui_impl_glfw_gl3.h \
       examples/opengl3_example/imgui_impl_glfw_gl3.cpp \
       ../imgui_impl_glfw_gl3
    rm -rf .git .gitignore examples .travis.yml TODO.txt
cd ..
mv imgui_repo imgui

echo $header | sed 's/./-/g' >> $histfile
echo "" >> $histfile