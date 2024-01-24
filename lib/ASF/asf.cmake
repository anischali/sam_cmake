#file(GLOB_RECURSE ASF_SOURCE_FILES 
#    *.c
#)

#file(GLOB_RECURSE ASF_SUBDIRS
#    LIST_DIRECTORIES true
#    *.h
#)
#foreach(item ${ASF_SUBDIRS})
#	if(IS_DIRECTORY ${item})
#        set(ASF_HEADERS_DIRS ${ASF_HEADERS_DIRS} ${item})
#	endif()
#endforeach()
set(SAM_LIB_EXTRA_SOURCES ${SAM_LIB_EXTRA_SOURCES}
    ${ASF_SOURCE_FILES}
)

set(SAM_LIB_EXTRA_HEADERS ${SAM_LIB_EXTRA_HEADERS}
    ${CMAKE_CURRENT_LIST_DIR}/common/boards
    ${ASF_HEADERS_DIRS}
)

set(SAM_LIB_EXTRA_LIBS ${SAM_LIB_EXTRA_LIBS}
    ${ASF_EXTRA_LIBS}
)