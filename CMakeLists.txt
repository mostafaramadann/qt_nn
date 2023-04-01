cmake_minimum_required(VERSION 3.25)
project(qt_nn)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 17)

find_package(Qt5 COMPONENTS Core Gui Widgets REQUIRED)

set(SOURCES ${CMAKE_SOURCE_DIR}/mvc/view/gui.cpp
        ${CMAKE_SOURCE_DIR}/mvc/model/mlp.h
        ${CMAKE_SOURCE_DIR}/mvc/model/mlp.cpp)

add_executable(qt_nn ${SOURCES})
target_link_libraries(qt_nn Qt5::Core Qt5::Gui Qt5::Widgets)