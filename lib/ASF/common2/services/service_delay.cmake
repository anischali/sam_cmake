set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/delay/delay.h
    ${CMAKE_CURRENT_LIST_DIR}/delay/sam0/systick_counter.h
    ${CMAKE_CURRENT_LIST_DIR}/delay/sam0/systick_counter.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/delay
    ${CMAKE_CURRENT_LIST_DIR}/delay/sam0
)