#include <spz/service/test.hpp>

#include <gtest/gtest.h>

TEST(Service, ReturnsSpichlerz) { EXPECT_EQ(spz::service::projectName(), "spichlerz"); }
