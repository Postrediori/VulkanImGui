make_executable()

target_include_directories(${PROJECT} PUBLIC
    ${Vulkan_INCLUDE_DIR}
    ${GLFW_INCLUDE_DIR}
    ${SDL3_INCLUDE_DIRS}
    ${IMGUI_INCLUDE_DIR}
    )

target_link_libraries(${PROJECT}
    ${Vulkan_LIBRARY}
    ${GLFW_LIBRARIES}
    ${SDL3_LIBRARIES}
    ${IMGUI_SDL3_LIBRARIES}
    )
