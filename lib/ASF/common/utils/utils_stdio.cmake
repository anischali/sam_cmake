set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/stdio/stdio_usb/stdio_usb.h
    ${CMAKE_CURRENT_LIST_DIR}/stdio/stdio_usb/stdio_usb.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}    
    ${CMAKE_CURRENT_LIST_DIR}/stdio
    ${CMAKE_CURRENT_LIST_DIR}/stdio/stdio_usb
)