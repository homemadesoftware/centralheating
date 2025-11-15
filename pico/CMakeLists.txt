cmake_minimum_required(VERSION 3.13...3.27)
include(pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

# epaper
# This bit downloads the git repo for the e-paper library
# Doing it here means we don't have to build it into any docker images
include(FetchContent)

FetchContent_Declare(
    waveshare_epaper
    GIT_REPOSITORY https://github.com/waveshare/Pico_ePaper_Code.git
    GIT_TAG main
)

FetchContent_MakeAvailable(waveshare_epaper)

add_subdirectory(${waveshare_epaper_SOURCE_DIR}/c)

# rest of your project

add_executable(my_project main.c)

target_link_libraries(
    my_project

    # Pico libs
    pico_stdlib
    pico_stdio
    pico_cyw43_arch_none
    hardware_spi
    
    # ePaper libs (order here matters)
    examples
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
    ${waveshare_epaper_SOURCE_DIR}/c/examples
)

pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

# This is what turns the elf into a uf2
pico_add_extra_outputs(my_project)
