#include <spz/http/test.hpp>

#include <gtest/gtest.h>

TEST(Http, ReturnsSpichlerz) { EXPECT_EQ(spz::http::projectName(), "spichlerz"); }
