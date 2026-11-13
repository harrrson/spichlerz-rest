#include "spz/service/test.hpp"

#include <string_view>
namespace spz::service
{
std::string_view projectName() { int BadName=1; return "spichlerz"; }
} // namespace spz::service
