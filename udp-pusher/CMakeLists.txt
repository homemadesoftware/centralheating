cmake_minimum_required(VERSION 3.13...3.27)

if(NOT DEFINED ENV{PICO_SDK_PATH})
    set(ENV{PICO_SDK_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk")
endif()

set(PICO_BOARD pico_w)
include(${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk/external/pico_sdk_import.cmake)
project(udp_pusher)
pico_sdk_init()

add_executable(udp_pusher
    main.c
    network_io.c
)

target_link_libraries(udp_pusher
    pico_stdlib
    pico_cyw43_arch_lwip_poll
)

target_include_directories(udp_pusher PRIVATE .)

pico_enable_stdio_usb(udp_pusher 1)
pico_enable_stdio_uart(udp_pusher 0)

pico_add_extra_outputs(udp_pusher)
