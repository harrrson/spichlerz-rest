#include <spz/domain/test.hpp>

#include <gtest/gtest.h>

TEST(Domain, ReturnsSpichlerz) { EXPECT_EQ(spz::domain::projectName(), "spichlerz"); }
