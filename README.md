# Example working integration of ImGUI with OpenGL3

## Introduction

This repository is an example of working integration of [ImGUI](https://github.com/ocornut/imgui) with [OpenGL3](https://www.opengl.org/) that contains all dependencies but OpenGL3's system library inside of project's file structure.

## Building

If you're on UNIX/Linux you might need to install `sudo apt install xorg-dev` package.

For more information, read [dependencies/README.md](https://github.com/JMendyk/ImGUI_with_OpenGL3/blob/master/dependencies/README.md).

```
cmake .
make
```

## Notes / TODO

1. GL3W
    - requires python
    - required cmake & make after cloning from repository
    - when trying to do a out-of-source build from `build` folder, GL3W gets 
      copied to build folder but does not get cmake & make'd, thus currently
      out-of-source build is impossible

    **TODO:** Consider getting rid of GL3W in favour of some better maintaned library.

2. Improve CMake build system

## Credits

Created by [JMendyk](https://github.com/JMendyk).

Includes libraries and source codes from:
- [ImGUI](https://github.com/ocornut/imgui)
- [OpenGL3](https://www.opengl.org/)
- [GL3W](https://github.com/skaslev/gl3w)
- [GLFW](https://github.com/glfw/glfw)
- [imgui\_impl\_glfw\_gl3](https://github.com/ocornut/imgui)
