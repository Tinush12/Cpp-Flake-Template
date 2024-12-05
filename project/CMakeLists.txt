cmake_minimum_required(VERSION 3.10)

project(MyProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)  
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#find_package(Curses REQUIRED)
#include_directories(${CURSES_INCLUDE_DIR})

add_executable(my_app main.cpp)
#target_link_libraries(my_app ${CURSES_LIBRARIES})

#set_target_properties(app_name ) #PROPERTIES CXX_STANDARD 17

#include_directories(include)

