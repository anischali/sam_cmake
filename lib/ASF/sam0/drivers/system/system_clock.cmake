set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/clock/clock_samd21_r21_da_ha1/clock.c
    ${CMAKE_CURRENT_LIST_DIR}/clock/clock_samd21_r21_da_ha1/gclk.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/clock
    ${CMAKE_CURRENT_LIST_DIR}/clock/clock_samd21_r21_da_ha1
)