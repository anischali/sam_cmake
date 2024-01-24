set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/sercom/i2c/i2c_sam0/i2c_master.c
    ${CMAKE_CURRENT_LIST_DIR}/sercom/i2c/i2c_sam0/i2c_master_interrupt.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/sercom/i2c
    ${CMAKE_CURRENT_LIST_DIR}/sercom/i2c/i2c_sam0
)