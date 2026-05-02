cmake_minimum_required(VERSION 3.13...3.27)

#
# 1. Setup and initialise Pico SDK
#
# Fall back to local submodule if env var not set (e.g. building in VS locally)
if(NOT DEFINED ENV{PICO_SDK_PATH})
    set(ENV{PICO_SDK_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk")
endif()

set(PICO_BOARD pico_w)
include(${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/pico-sdk/external/pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

#
# 2. Setup e-paper library
#
# Fall back to local submodule if env var not set
if(DEFINED ENV{waveshare_epaper})
    set(waveshare_epaper $ENV{waveshare_epaper})
else()
    set(waveshare_epaper "${CMAKE_CURRENT_SOURCE_DIR}/../PicoBuild/libs/waveshare")
endif()

add_subdirectory(${waveshare_epaper}/c waveshare_build)

#
# 3. Main project decleration
#

add_executable(my_project 
    #main.c
    PicoEntryPoint.c
    Display.c
    Rtc1307.c
    KeyMatrix.c
    i2c.c
    IoExpander.c
    ButtonPad.c

    ../Common/MenuMgr.c
    ../Common/CentralHeating.c
    ../Common/CentralHeatingMenus.c
    ../Common/StringUtils.c
    ../Common/DateTime.c
)



target_link_libraries(
    my_project

    # Pico libs
    pico_stdlib
    pico_stdio
    hardware_i2c
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

target_include_directories(my_project PRIVATE
    ./../Common
)


pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

# This is what turns the elf into a uf2
pico_add_extra_outputs(my_project)
