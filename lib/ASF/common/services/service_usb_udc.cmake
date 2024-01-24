
set(ASF_SOURCE_FILES ${ASF_SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc/udc.c
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc/udc_desc.h
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc/udc.h
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc/udd.h
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc/udi.h
)

set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS}
    ${CMAKE_CURRENT_LIST_DIR}/usb    
    ${CMAKE_CURRENT_LIST_DIR}/usb/udc
)