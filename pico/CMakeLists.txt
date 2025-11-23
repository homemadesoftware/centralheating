cmake_minimum_required(VERSION 3.13...3.27)

#
# 1. Setup and initialise Pico SDK
#
set(PICO_BOARD pico_w)
include(pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

#
# 2. Setup e-paper library
#
set(waveshare_epaper $ENV{waveshare_epaper})

add_subdirectory(${waveshare_epaper}/c waveshare_build)

#
# 3. Main project decleration
#

add_executable(my_project main.c)

target_link_libraries(
    my_project

    # Pico libs
    pico_stdlib
    pico_stdio
    pico_multicore
    pico_cyw43_arch_none
    hardware_spi
    
    # ePaper libs (order here matters)
    #examples
    Config
    Fonts
    GUI
    ePaper
)

target_include_directories(my_project PRIVATE
    ${waveshare_epaper}/c/lib/Config
    ${waveshare_epaper}/c/lib/e-Paper
    ${waveshare_epaper}/c/lib/GUI
    ${waveshare_epaper}/c/lib/Fonts
    #${waveshare_epaper}/c/examples
)

pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

# This is what turns the elf into a uf2
pico_add_extra_outputs(my_project)
