cmake_minimum_required(VERSION 3.10)
project(dbscan_cpp)
set(CMAKE_CXX_FLAGS "-std=c++17 -msse3 -fopenmp -lstdc++fs -fpermissive")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")

######################### Add dlib's directory ##################################
#You need to change directory here by your local setting.
add_subdirectory(/home/zcw/C++_MUKOEDO_LIB/Dlib_clone/dlib-19.21/dlib dlib_build)

add_executable(dbscan_cluster dbscan.cpp dbscan.h main.cpp plot.h)
target_link_libraries(dbscan_cluster dlib::dlib)
target_link_libraries(dbscan_cluster stdc++fs)
