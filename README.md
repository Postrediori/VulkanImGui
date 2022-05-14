## Introduction

This repository contains ImGui+Vulkan examples implemented as CMake project.

## Prerequisites

The following libraries are included as git submodules in `3rdparty` folder:

* [glfw](https://github.com/glfw/glfw)
* [imgui](https://github.com/ocornut/imgui)

The following dependencies are not included and must be present in CMake path:

* [SDL](https://www.libsdl.org)
* [Vulkan SDK](https://vulkan.lunarg.com)

Note that not all CMake versions are provided together with `FindSDL2.cmake` module that is required for `SDLVulkan` project.
One may check [SDL2Config.cmake from official SDL repo](https://github.com/libsdl-org/SDL/blob/main/SDL2Config.cmake)
or [a blog post by trenki2](https://trenki2.github.io/blog/2017/06/02/using-sdl2-with-cmake/)
or other sources and copy the file into `<CMake shared dir>/Modules`.

## Building the project

### Dependencies for Linux

The following instructions apply to:

* Ubuntu 20.04, 18.04, 16.04

```
sudo apt-get install \
    build-essential \
    cmake \
    libvulkan-dev \
    libsdl2-dev
```

The following instructions apply to:

* Fedora 22 and higher

```
sudo dnf install \
    gcc gcc-c++ make \
    cmake \
    mesa-vulkan-devel \
    libXrandr-devel \
    libXinerama-devel \
    libXcursor-devel \
    libXi-devel \
    SDL2-devel
```

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

## Running the project

After the successful build binaries will end up in `<source dir>/bundle` sub-folder:

```
cd <source dir>

# Run GLFW-based demo
./bundle/GLFWVulkan/GLFWVulkan

# Run SDL-based demo
./bundle/SDLVulkan/SDLVulkan
```
