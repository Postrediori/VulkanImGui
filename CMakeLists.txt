project(VulkanImGui)
cmake_minimum_required(VERSION 3.11)

set(CMAKE_CXX_STANDARD 11)

include(cmake/3rdparty.cmake)
include(cmake/config.cmake)

# projects
add_subdirectory(src)
