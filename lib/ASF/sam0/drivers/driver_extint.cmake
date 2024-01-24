set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/extint/extint_sam_d_r_h/extint.c
    ${CMAKE_CURRENT_LIST_DIR}/extint/extint_callback.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/extint
    ${CMAKE_CURRENT_LIST_DIR}/extint/extint_sam_d_r_h
)