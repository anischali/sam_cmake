set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/interrupt.h
    ${CMAKE_CURRENT_LIST_DIR}/interrupt/interrupt_sam_nvic.h
    ${CMAKE_CURRENT_LIST_DIR}/interrupt/interrupt_sam_nvic.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}    
    ${CMAKE_CURRENT_LIST_DIR}/interrupt
)