set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/interrupt/system_interrupt.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/interrupt
    ${CMAKE_CURRENT_LIST_DIR}/interrupt/system_interrupt_samd21
)