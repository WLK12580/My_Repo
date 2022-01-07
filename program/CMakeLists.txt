# project name

# requirement of cmake version
cmake_minimum_required(VERSION 3.5)
project(opencv)
# set the directory of executable files
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${opencv_test_SOURCE_DIR}/bin)

# find required opencv
find_package(OpenCV REQUIRED)
# directory of opencv headers
include_directories(${OpenCV_INCLUDE_DIRS})
# name of executable file and path of source file
add_executable(opencv_tet  opencv_text.cpp)
# directory of opencv library
# link_directories(${OpenCV_LIBRARY_DIRS})
# opencv libraries
target_link_libraries(opencv_tet ${OpenCV_LIBS})
