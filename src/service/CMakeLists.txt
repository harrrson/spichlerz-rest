add_library(spz_service)

add_library(spz::service ALIAS spz_service)

set(includedir include/spz/service)

target_sources(spz_service 
    PUBLIC FILE_SET HEADERS BASE_DIRS include FILES ${includedir}/test.hpp
    PRIVATE src/test.cpp
        )

target_link_libraries(spz_service
    PUBLIC
        spz::domain
    PRIVATE
        spz::warnings
)
