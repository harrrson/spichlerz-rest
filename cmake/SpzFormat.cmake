find_program(CLANG_FORMAT_EXE clang-format)

if(CLANG_FORMAT_EXE)
    execute_process(COMMAND ${CLANG_FORMAT_EXE} --version OUTPUT_VARIABLE FORMAT_VERSION)

    if(FORMAT_VERSION MATCHES "clang-format version ([0-9]+)\\.([0-9]+)\\.([0-9]+)")
        set(found_version "${CMAKE_MATCH_1}.${CMAKE_MATCH_2}.${CMAKE_MATCH_3}")
        message(STATUS "clang-format ${found_version}: ${CLANG_FORMAT_EXE}")
        if(CMAKE_MATCH_1 EQUAL 16)
            file(GLOB_RECURSE FORMAT_FILES CONFIGURE_DEPENDS
                "${PROJECT_SOURCE_DIR}/src/*.cpp"
                "${PROJECT_SOURCE_DIR}/src/*.hpp"
                "${PROJECT_SOURCE_DIR}/tests/*.cpp"
                "${PROJECT_SOURCE_DIR}/tests/*.hpp"
            )
            add_custom_target(format ${CLANG_FORMAT_EXE} -i ${FORMAT_FILES} VERBATIM )
            add_custom_target(format-check ${CLANG_FORMAT_EXE} --dry-run --Werror ${FORMAT_FILES} VERBATIM )
        else()
            message(STATUS "clang-format version need to be 16")
        endif()
    else()
        message(STATUS "clang-format version cannot be determined")
    endif()
else()
    message(STATUS "clang-format not found")
endif()
