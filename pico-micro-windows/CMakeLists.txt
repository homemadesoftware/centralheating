cmake_minimum_required(VERSION 3.13...3.27)

if(NOT DEFINED ENV{PICO_SDK_PATH})
    set(ENV{PICO_SDK_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk")
endif()

set(PICO_BOARD pico2_w)
include(${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk/external/pico_sdk_import.cmake)
project(micro_windows)
pico_sdk_init()

add_executable(micro_windows
    main.c
    ButtonPad.c
    RTC1307.c
    i2c.c
)

target_link_libraries(micro_windows
    pico_stdlib
    hardware_i2c
)

target_include_directories(micro_windows PRIVATE
    ./../Common
)

pico_enable_stdio_usb(micro_windows 1)
pico_enable_stdio_uart(micro_windows 0)

pico_add_extra_outputs(micro_windows)
