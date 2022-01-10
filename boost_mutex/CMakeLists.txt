cmake_minimum_required(VERSION 3.0)
project(boost_mutex)

find_package(Boost REQUIRED COMPONENTS thread)

include_directories(${Boost_INLCUDE_DIRS})

add_executable(${PROJECT_NAME} boost_mutex.cpp)

target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})

