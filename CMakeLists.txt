cmake_minimum_required(VERSION 3.25...3.31)

project(
    spichlerz
    VERSION 0.0.1
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)

option(BUILD_TESTING "Build tests" ${PROJECT_IS_TOP_LEVEL})

include(cmake/SpzWarnings.cmake)

if(PROJECT_IS_TOP_LEVEL)
    include(cmake/SpzFormat.cmake)
endif()

add_subdirectory(src)

if(BUILD_TESTING)
    enable_testing()
    add_subdirectory(tests)
endif()
