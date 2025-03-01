set(IMGUI_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/3rdparty/imgui)
file(GLOB IMGUI_SOURCES ${IMGUI_INCLUDE_DIR}/*.cpp)
file(GLOB IMGUI_HEADERS ${IMGUI_INCLUDE_DIR}/*.h)

set(IMGUI_BACKENDS_DIR ${IMGUI_INCLUDE_DIR}/backends)
set(IMGUI_BACKEND_SOURCES
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdl3.cpp
    ${IMGUI_BACKENDS_DIR}/imgui_impl_vulkan.cpp)
set(IMGUI_BACKEND_HEADERS
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdl3.h
    ${IMGUI_BACKENDS_DIR}/imgui_impl_vulkan.h)

add_library(imgui_sdl3 STATIC
    ${IMGUI_SOURCES} ${IMGUI_SOURCES}
    ${IMGUI_BACKEND_HEADERS} ${IMGUI_BACKEND_SOURCES})

target_include_directories(imgui_sdl3 PUBLIC
    ${IMGUI_INCLUDE_DIR}
    ${IMGUI_BACKENDS_DIR}
    ${Vulkan_INCLUDE_DIR}
    ${SDL3_INCLUDE_DIRS}
    )

set_target_properties(imgui_sdl3 PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(imgui_sdl3 PROPERTIES FOLDER 3rdparty)

set(IMGUI_SDL3_LIBRARIES imgui_sdl3)
