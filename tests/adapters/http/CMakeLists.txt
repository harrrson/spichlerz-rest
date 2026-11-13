add_executable(spz_http_tests
    hello_test.cpp)

target_link_libraries(spz_http_tests PRIVATE spz::http spz::warnings GTest::gtest_main)

gtest_discover_tests(spz_http_tests)
