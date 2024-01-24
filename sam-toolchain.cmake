include(project.cmake)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_LINKER arm-none-eabi-ld)
set(CMAKE_OBJCOPY arm-none-eabi-objcopy)

set(CMAKE_SYSTEM_NAME Generic) # Or name of your OS if you have one
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_CROSSCOMPILING 1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)



# add_compile_options(
#     -D${SAM_PROJECT_PTYPE} -mtune=cortex-m0 -g -ggdb -Os -g3 -Wall -fmessage-length=0 
#     -ffunction-sections -fdata-sections -ffreestanding -flto
#     -pipe -Wall -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration 
#     -Wpointer-arith -std=gnu99 -fno-strict-aliasing -ffunction-sections -fdata-sections 
#     -Wchar-subscripts -Wcomment -Wformat=2 -Wimplicit-int -Wmain -Wparentheses -Wsequence-point 
#     -Wreturn-type -Wswitch -Wtrigraphs -Wunused -Wuninitialized -Wunknown-pragmas -Wfloat-equal 
#     -Wundef -Wshadow -Wbad-function-cast -Wwrite-strings -Wsign-compare -Waggregate-return 
#     -Wmissing-declarations -Wformat -Wmissing-format-attribute -Wno-deprecated-declarations 
#     -Wpacked -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code -Wcast-align 
#     --param max-inline-insns-single=500
# )
# add_link_options(-T${CMAKE_CURRENT_BINARY_DIR}/../${SAM_PROJECT_LDSCRIPT} -mthumb -flto -ffreestanding -nostdlib -mtune=cortex-m0 -Wl,--gc-sections -Xlinker -Map=${SAM_PROJECT_NAME}.map -Xlinker)

add_compile_options(
    -mthumb -O0 -fdata-sections -ffunction-sections -mlong-calls
    -g3 -Wall -mcpu=${SAM_PROJECT_CPU} -c -pipe -fno-strict-aliasing
    -Wall -Wstrict-prototypes -Wmissing-prototypes
    -Werror-implicit-function-declaration -Wpointer-arith
    -std=gnu99 -ffunction-sections -fdata-sections
    -Wchar-subscripts -Wcomment -Wformat=2 -Wimplicit-int
    -Wmain -Wparentheses -Wsequence-point -Wreturn-type
    -Wswitch -Wtrigraphs -Wunused -Wuninitialized -Wunknown-pragmas
    -Wfloat-equal -Wundef -Wshadow -Wbad-function-cast -Wwrite-strings
    -Wsign-compare -Waggregate-return  -Wmissing-declarations -Wformat
    -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked
    -Wredundant-decls -Wnested-externs -Wlong-long -Wunreachable-code
    -Wcast-align --param max-inline-insns-single=500 -MD -MP -MF
)
add_link_options(-mthumb -specs=nano.specs -specs=nosys.specs -Wl,-Map=${SAM_PROJECT_NAME}.map
    -Wl,--start-group -larm_cortexM0l_math -lm  -Wl,--end-group -Wl,--gc-sections 
    -mcpu=${SAM_PROJECT_CPU} -Wl,--entry=Reset_Handler -Wl,--cref -mthumb
    -T${CMAKE_CURRENT_BINARY_DIR}/../${SAM_PROJECT_LDSCRIPT}
)
add_link_options(${SAM_LIB_EXTRA_LIBS})
add_definitions(${SAM_EXTRA_DEFINITIONS})
include_directories(${SAM_PROJECT_HEADERS_DIR})