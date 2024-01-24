set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/usb/usb_sam_d_r/usb.c
    ${CMAKE_CURRENT_LIST_DIR}/usb/stack_interface/usb_device_udd.c
    ${CMAKE_CURRENT_LIST_DIR}/usb/stack_interface/usb_dual.c
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/usb
    ${CMAKE_CURRENT_LIST_DIR}/usb/stack_interface
)