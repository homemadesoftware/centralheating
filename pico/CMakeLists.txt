cmake_minimum_required(VERSION 3.13...3.27)
include(pico_sdk_import.cmake)
project(my_project)
pico_sdk_init()

add_executable(my_project main.c)

pico_enable_stdio_usb(my_project 1)
pico_enable_stdio_uart(my_project 0)

# This is what turns the elf into a uf2
pico_add_extra_outputs(my_project)

target_link_libraries(
	my_project 
	pico_stdlib 
	pico_stdio
	pico_cyw43_arch_none)


# rest of your project
