cmake_minimum_required(VERSION 3.2.0)

include(${CMAKE_CURRENT_SOURCE_DIR}/sam-toolchain.cmake)

include(${CMAKE_CURRENT_SOURCE_DIR}/project.cmake)


project(${SAM_PROJECT_NAME} VERSION ${SAM_PROJECT_VERSION})

enable_language(ASM C CXX)

add_executable(${SAM_PROJECT_NAME}.elf
    ${SAM_PROJECT_SOURCES}
    ${SAM_LIB_EXTRA_SOURCES}
)

include_directories(${SAM_PROJECT_HEADERS_DIR} ${SAM_LIB_EXTRA_HEADERS})

add_custom_command(
		TARGET ${SAM_PROJECT_NAME}.elf POST_BUILD
		COMMAND ${CMAKE_OBJCOPY} -O ihex ${SAM_PROJECT_NAME}.elf ${SAM_PROJECT_NAME}.hex
		WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
		COMMENT "Generate .hex extension file firmware")

add_custom_command(
        TARGET ${SAM_PROJECT_NAME}.elf POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O binary ${SAM_PROJECT_NAME}.elf ${SAM_PROJECT_NAME}.bin
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Generate .bin extension file firmware")

add_custom_command(
        TARGET ${SAM_PROJECT_NAME}.elf 
        COMMAND ${CMAKE_OBJCOPY} -O binary ${SAM_PROJECT_NAME}.elf ${SAM_PROJECT_NAME}.bin
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Generate .bin extension file firmware")

SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)
#include(upload.cmake)