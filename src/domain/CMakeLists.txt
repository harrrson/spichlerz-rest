add_library(spz_domain)

add_library(spz::domain ALIAS spz_domain)

set(includedir include/spz/domain)

target_sources(spz_domain 
    PUBLIC FILE_SET HEADERS BASE_DIRS include FILES 
        ${includedir}/test.hpp
    PRIVATE
        src/test.cpp
)

target_link_libraries(spz_domain
    PRIVATE
        spz::warnings
)
