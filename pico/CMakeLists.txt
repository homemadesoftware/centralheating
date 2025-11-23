cmake_minimum_required(VERSION 3.13...3.27)
include(FetchContent)

#
# 1. Fetch, setup and initialise Pico SDK
#
set(PICO_SDK_FETCH_FROM_GIT on)
set(PICO_SDK_FETCH_FROM_GIT_TAG 2.2.0)
set(PICO_BOARD pico_w)
unset(PICO_SDK_PATH)
include(pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

#
# 2. Fetch and setup e-paper library
#

FetchContent_Declare(
    waveshare_epaper
    GIT_REPOSITORY https://github.com/waveshare/Pico_ePaper_Code.git
    GIT_TAG c9bcd84db5adf5f085353649a8a5c31492bc5fb8
)

FetchContent_MakeAvailable(waveshare_epaper)

add_subdirectory(${waveshare_epaper_SOURCE_DIR}/c)

#
# 3. Main project decleration
#

add_executable(my_project PicoEntryPoint.c)

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
    ${waveshare_epaper_SOURCE_DIR}/c/lib/Config
    ${waveshare_epaper_SOURCE_DIR}/c/lib/e-Paper
    ${waveshare_epaper_SOURCE_DIR}/c/lib/GUI
    ${waveshare_epaper_SOURCE_DIR}/c/lib/Fonts
    #${waveshare_epaper_SOURCE_DIR}/c/examples
)

pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

# This is what turns the elf into a uf2
pico_add_extra_outputs(my_project)
