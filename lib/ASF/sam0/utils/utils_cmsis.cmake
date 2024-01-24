set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/source/gcc/startup_samd21.c
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/source/system_samd21.h
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/source/system_samd21.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/include
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/include/pio
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/include/component
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/include/instance
    ${CMAKE_CURRENT_LIST_DIR}/cmsis/samd21/source
)