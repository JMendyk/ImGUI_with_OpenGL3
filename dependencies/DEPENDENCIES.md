# Dependencies


## General information 

Project to work properly requires:
1. OpenGL3
2. GL3W
3. GLFW
4. ImGUI
5. imgui\_impl\_glfw\_gl3

1. OpenGL3
OpenGL3 is required to be installed on user's computer for proper compilation and non-development usage.

2. [GL3W](https://github.com/skaslev/gl3w) (included in project's source)
*Maintainer does not provide versions nor releases thus master branch is used.*
Requires Python and building before usage with commands:
```
cmake .
make
```

3. [GLFW](https://github.com/glfw/glfw) (included in project's source)
*Version tagged 3.2.1.*

4. [ImGUI](https://github.com/ocornut/imgui) (included in project's source)
*Version tagged v1.52.*

5. [imgui\_impl\_glfw\_gl3](https://github.com/ocornut/imgui) (included in project's source)
*Version tagged v1.52. Sourced directly from ImGUI's repo.*
ImGUI integration for OpenGL3 & GLFW.

## Platform specific

### UNIX/Linux

On UNIX/Linux **xorg-dev** is required for complilation of the project.
It is usually possibile using your distribution package manager. 
In case of Ubuntu that is apt, install using `sudo apt install xorg-dev`.
