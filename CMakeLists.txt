cmake_minimum_required(VERSION 3.12)
project(conda_bonjour)

find_package(PythonInterp REQUIRED)
find_package(PythonLibs)
find_package(pybind11 REQUIRED)
find_package(Eigen3 REQUIRED)

# Set up the Python module for common_cpp_cmake
pybind11_add_module(common_cpp_cmake conda_bonjour/common_cpp_cmake.cpp)
target_link_libraries(common_cpp_cmake PRIVATE Eigen3::Eigen)

message(STATUS "Python version: ${Python_VERSION_MAJOR}.${Python_VERSION_MINOR}")
message(STATUS "CMAKE_INSTALL_PREFIX: ${CMAKE_INSTALL_PREFIX}")
message(STATUS "Python version: ${PYTHON3_VERSION}")

install(TARGETS common_cpp_cmake DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/python${PYTHON3_VERSION}/site-packages/conda_bonjour)
file(GLOB PYTHON_SOURCES "conda_bonjour/*.py")
install(FILES ${PYTHON_SOURCES} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/python${PYTHON3_VERSION}/site-packages/conda_bonjour)