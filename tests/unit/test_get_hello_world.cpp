#include <gtest/gtest.h>
#include <MyComponent.hpp>

using namespace HelloWorld;


TEST(HelloWorldTest, ReturnsHelloWorld) {
    EXPECT_EQ(MyComponent::getHelloWorld(), "Hello, World!");
}
