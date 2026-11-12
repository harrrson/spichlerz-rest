add_executable(spz_domain_tests
    hello_test.cpp)

target_link_libraries(spz_domain_tests PRIVATE spz::domain spz::warnings GTest::gtest_main)

gtest_discover_tests(spz_domain_tests)
