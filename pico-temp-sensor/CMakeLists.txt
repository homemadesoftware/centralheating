cmake_minimum_required(VERSION 3.13...3.27)

if(NOT DEFINED ENV{PICO_SDK_PATH})
    set(ENV{PICO_SDK_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk")
endif()

set(PICO_BOARD pico2_w)
include(${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk/external/pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

add_executable(my_project
    main.c
)

target_link_libraries(my_project
    pico_stdlib
    hardware_adc
    pico_cyw43_arch_none
)

pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

pico_add_extra_outputs(my_project)
