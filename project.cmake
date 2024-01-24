set(SAM_PROJECT_NAME "flight-ctrl")
set(SAM_PROJECT_VERSION 1.0.0)
set(SAM_PROJECT_DEVICE "ATSAMD21G18A")
set(SAM_PROJECT_PTYPE __SAMD21G18A__)
set(SAM_PROJECT_CPU cortex-m0plus)

set(SAM_LIB_EXTRA_SOURCES)
set(SAM_LIB_EXTRA_HEADERS)
set(SAM_LIB_EXTRA_LIBS)

include(lib/ASF/common2/boards/user_board.cmake)
include(lib/ASF/common2/services/service_delay.cmake)
include(lib/ASF/sam0/drivers/system/system_clock.cmake)
include(lib/ASF/sam0/drivers/driver_extint.cmake)
include(lib/ASF/sam0/drivers/system/system_pinmux.cmake)
include(lib/ASF/common/services/service_ioport.cmake)
include(lib/ASF/sam0/drivers/driver_usb.cmake)
include(lib/ASF/sam0/drivers/system/system_interrupt.cmake)
include(lib/ASF/sam0/drivers/driver_sercom.cmake)
include(lib/ASF/sam0/drivers/driver_system.cmake)
include(lib/ASF/sam0/drivers/system/system_power.cmake)
include(lib/ASF/sam0/drivers/system/system_reset.cmake)
include(lib/ASF/sam0/drivers/driver_sercom_i2c.cmake)
include(lib/ASF/sam0/drivers/driver_port.cmake)
include(lib/ASF/sam0/drivers/driver_sercom_spi.cmake)
include(lib/ASF/sam0/drivers/driver_sercom_usart.cmake)
include(lib/ASF/common/services/service_sleepmgr.cmake)
include(lib/ASF/sam0/utils/utils_stdio.cmake)
include(lib/ASF/common/services/service_serial.cmake)
include(lib/ASF/sam0/drivers/driver_tcc.cmake)
include(lib/ASF/common/services/service_usb_class_cdc.cmake)
include(lib/ASF/common/services/service_usb_udc.cmake)
include(lib/ASF/common/services/service_usb_class_composite.cmake)
include(lib/ASF/common/utils/utils_stdio.cmake)
include(lib/ASF/thirdparty/compenent_cmsis.cmake)
include(lib/ASF/sam0/utils/utils_syscalls.cmake)
include(lib/ASF/sam0/utils/utils_cmsis.cmake)
include(lib/ASF/sam0/sam0_lib.cmake)
include(lib/ASF/common/utils/utils_interrupt.cmake)
include(lib/ASF/asf.cmake)

set(SAM_PROJECT_LDSCRIPT
    src/atsamd21g18a.ld
)

set(SAM_PROJECT_SOURCES
    src/pwm_controller.c 
    src/usb_cdc.c
    src/gyro_st_lsm6dsl.c
    src/spi.c
    src/usb_intf.c
    src/console.c
    src/main.c
)

set(SAM_PROJECT_HEADERS_DIR
    src
    src/config
)


set(SAM_EXTRA_DEFINITIONS
    -D${SAM_PROJECT_PTYPE}=1
    -DDEBUG=1
    -DSAM21=1
    -DSPI_CALLBACK_MODE=true
    -DUSART_CALLBACK_MODE=true
    -DSYSTICK_MODE=1
    -DTCC_ASYNC=true
    -DI2C_MASTER_CALLBACK_MODE=true
    -DEXTINT_CALLBACK_MODE=true
    -DUSB_DEVICE_LPM_SUPPORT=1
    -DUDD_ENABLE=1
    -DBOARD=USER_BOARD
    -DARM_MATH_CM0PLUS=true
)

message(STATUS "${SAM_LIB_EXTRA_LIBS}")
