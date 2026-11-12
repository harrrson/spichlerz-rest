add_executable(spichlerz main.cpp)

target_link_libraries(spichlerz
    PRIVATE
        spz::http
        spz::service
        spz::warnings
)
