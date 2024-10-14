cmake_minimum_required(VERSION 3.10)

project(Clorador VERSION 1.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CXX_EXTENSIONS OFF)


include_directories(include)
# TODO: check this option instead of using include_directories
# target_include_directories(${PROJECT_NAME} PRIVATE "${CMAKE_CURRENT_LIST_DIR}/include")

file(GLOB SOURCES src/*.cpp)
add_executable(${PROJECT_NAME} ${SOURCES})

# Testing
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

file(GLOB TEST_SOURCES tests/*.cpp tests/**/*.cpp)
list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")
add_executable(${PROJECT_NAME}_tests ${SOURCES} ${TEST_SOURCES})
target_link_libraries(${PROJECT_NAME}_tests ${GTEST_LIBRARIES} pthread)

# Add tests
add_test(NAME TestMain COMMAND ${PROJECT_NAME}_tests)
