add_library(spz_http)

add_library(spz::http ALIAS spz_http)

set(includedir include/spz/http)

target_sources(spz_http
    PUBLIC FILE_SET HEADERS BASE_DIRS include FILES
        ${includedir}/test.hpp
    PRIVATE
        src/test.cpp
)

target_link_libraries(spz_http 
    PUBLIC
        spz::service
    PRIVATE
        spz::warnings
)
