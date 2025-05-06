cmake_minimum_required(VERSION 3.28)
project(asn1c LANGUAGES C VERSION 1.0.0 DESCRIPTION "cmake config to make CLion happy")

set(CMAKE_C_STANDARD 99)

file (GLOB common_SRC
        "libasn1common/*.h"
        "libasn1common/*.c")

file (GLOB compiler_SRC
        "libasn1compiler/*.h"
        "libasn1compiler/*.c")

file (GLOB fix_SRC
        "libasn1fix/*.h"
        "libasn1fix/*.c")

file (GLOB parser_SRC
        "libasn1parser/*.h"
        "libasn1parser/*.c")

file (GLOB print_SRC
        "libasn1print/*.h"
        "libasn1print/*.c")

add_library(libasn1c
        ${common_SRC}
        ${compiler_SRC}
        ${fix_SRC}
        ${parser_SRC}
        ${print_SRC})

target_include_directories(libasn1c PUBLIC libasn1common)
target_include_directories(libasn1c PUBLIC libasn1compiler)
target_include_directories(libasn1c PUBLIC libasn1fix)
target_include_directories(libasn1c PUBLIC libasn1parser)
target_include_directories(libasn1c PUBLIC libasn1print)