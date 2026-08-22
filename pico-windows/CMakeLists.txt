cmake_minimum_required(VERSION 3.13...3.27)

if(NOT DEFINED ENV{PICO_SDK_PATH})
    set(ENV{PICO_SDK_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk")
endif()

set(PICO_BOARD pico2_w)
include(${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk/external/pico_sdk_import.cmake)
project(pico_windows)
pico_sdk_init()

file(GLOB PW_COMMON_SOURCES "../PicoWindowsCommon/*.c")

add_executable(pico_windows
    main.c
    ButtonPad.c
    RTC1307.c
    i2c.c
    ${PW_COMMON_SOURCES}
)

target_link_libraries(pico_windows
    pico_stdlib
    hardware_i2c
)

target_include_directories(pico_windows PRIVATE
    ./../PicoWindowsCommon
)

pico_enable_stdio_usb(pico_windows 1)
pico_enable_stdio_uart(pico_windows 0)

pico_add_extra_outputs(pico_windows)
