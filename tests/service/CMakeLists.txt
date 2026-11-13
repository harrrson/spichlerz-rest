add_executable(spz_service_tests
    hello_test.cpp)

target_link_libraries(spz_service_tests PRIVATE spz::service spz::warnings GTest::gtest_main)

gtest_discover_tests(spz_service_tests)
