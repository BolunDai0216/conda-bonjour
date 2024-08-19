cmake_minimum_required(VERSION 3.12)
project(conda_bonjour)

# Find pybind11
find_package(pybind11 REQUIRED)
find_package(Eigen3 REQUIRED)

# Set up the Python module for common_cpp_cmake
pybind11_add_module(common_cpp_cmake conda_bonjour/common_cpp_cmake.cpp)
target_link_libraries(common_cpp_cmake PRIVATE Eigen3::Eigen)