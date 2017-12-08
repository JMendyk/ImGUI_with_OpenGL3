# Example working integration of ImGUI with OpenGL3

## Introduction

This repository is an example of working integration of [ImGUI](https://github.com/ocornut/imgui) with [OpenGL3](https://www.opengl.org/) that contains all dependencies but OpenGL3's system library inside of project's file structure.

## Building

```
cmake .
make
```

If you're on UNIX/Linux you might need to install xorg-dev and RandR.
If you're on Windows you might need to install GLUT.

For more information regarding project dependencies, read [dependencies/README.md](https://github.com/JMendyk/ImGUI_with_OpenGL3/blob/master/dependencies/README.md).

## Notes / TODO

1. Improve dependency management.

2. GL3W
    - requires python to be built
      (partially solved by distributing build version)
    - requires cmake & make after cloning from repository
      (partially solved by distributing build version)
    - when trying to do an out-of-source build, GL3W gets copied
      to build folder but does not get properly built,
      thus currently out-of-source build is impossible

3. Improve CMake build system.

## Credits

Created by [JMendyk](https://github.com/JMendyk).

Includes libraries and source codes from:
- [ImGUI](https://github.com/ocornut/imgui)
- [OpenGL3](https://www.opengl.org/)
- [GL3W](https://github.com/skaslev/gl3w)
- [GLFW](https://github.com/glfw/glfw)
- [imgui\_impl\_glfw\_gl3](https://github.com/ocornut/imgui)
