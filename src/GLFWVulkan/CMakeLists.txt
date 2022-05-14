make_executable()

target_include_directories(${PROJECT} PUBLIC
    ${Vulkan_INCLUDE_DIR}
    ${GLFW_INCLUDE_DIR}
    ${IMGUI_INCLUDE_DIR}
    )
    
target_link_libraries(${PROJECT}
    ${Vulkan_LIBRARY}
    ${GLFW_LIBRARIES}
    ${IMGUI_LIBRARIES}
    )
