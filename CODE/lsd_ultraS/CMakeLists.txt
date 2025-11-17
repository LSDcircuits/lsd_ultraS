cmake_minimum_required(VERSION 3.13)
include(pico_sdk_import.cmake)
project(lsd_ultraS C CXX ASM)

pico_sdk_init()

add_executable(lsd_ultraS
    lsd_ultraS.c
    SSD1306.c
)

pico_generate_pio_header(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/pulse.pio)
pico_enable_stdio_usb(lsd_ultraS 1)
pico_enable_stdio_uart(lsd_ultraS 0)

target_link_libraries(lsd_ultraS
    pico_stdlib     
    hardware_pio
    hardware_adc
    hardware_i2c
)
pico_add_extra_outputs(lsd_ultraS)