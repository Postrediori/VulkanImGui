## Introduction

This repository contains ImGui+Vulkan examples implemented as CMake project.


## Prerequisites

The following libraries are included as git submodules in `3rdparty` folder:

* [glfw](https://github.com/glfw/glfw)
* [imgui](https://github.com/ocornut/imgui)

The following dependencies are not included and must be present in CMake path:

* [SDL](https://www.libsdl.org)
* [Vulkan SDK](https://vulkan.lunarg.com)


## Building the project

### Dependencies for Linux

TODO


### Cloning Repository

Clone the repository together with submodules using `--recursive` flag:

```
git clone --recursive https://github.com/Postrediori/VulkanImGui.git
```


### Build

The program is built with the commands below. CMake requires the directory
with the main project's `CMakeLists.txt` file as an argument. Then the CMake
creates the build files for the GNU make which build an executable.

```
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
make install
```

## Running Project

After the successful build binaries will end up in `<source dir>/bundle` sub-folder:

```
cd <source dir>

# Run GLFW-based demo
./bundle/GLFWVulkan/GLFWVulkan

# Run SDL-based demo
./bundle/SDLVulkan/SDLVulkan
```
