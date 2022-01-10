cmake_minimum_required(VERSION 3.0)
project(boost_demo1)
find_package(Boost REQUIRED COMPONENTS thread)#必须加上线程组建否则make失败；
include_directories(${Boost_INCLUDE_DIRS})
add_executable(${PROJECT_NAME} demo1.cpp)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})
