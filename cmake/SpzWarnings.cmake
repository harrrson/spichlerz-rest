add_library(spz_warnings INTERFACE)
add_library(spz::warnings ALIAS spz_warnings)

set(SPZ_COMMON_WARNINGS
    -Wall -Wextra -Wpedantic
    -Wshadow -Wconversion -Wsign-conversion
    -Wnon-virtual-dtor          # ports = virtual interfaces
    -Wold-style-cast -Woverloaded-virtual
    -Wnull-dereference -Wimplicit-fallthrough
)
set(SPZ_GCC_WARNINGS
    -Wduplicated-cond -Wduplicated-branches -Wlogical-op -Wuseless-cast
)

target_compile_options(spz_warnings INTERFACE
    ${SPZ_COMMON_WARNINGS}
    "$<$<CXX_COMPILER_ID:GNU>:${SPZ_GCC_WARNINGS}>"
)
