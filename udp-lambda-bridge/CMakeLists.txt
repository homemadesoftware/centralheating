cmake_minimum_required(VERSION 3.10)
project(udp-lambda-bridge-pi C)

find_package(CURL REQUIRED)

add_executable(udp-lambda-bridge-pi
    main.c
    udp_io.c
    CommandCentreClient.c
    DesiredStateReader.c
)

target_include_directories(udp-lambda-bridge-pi PRIVATE .)
target_link_libraries(udp-lambda-bridge-pi PRIVATE CURL::libcurl)
target_compile_options(udp-lambda-bridge-pi PRIVATE -Wall -Werror)
