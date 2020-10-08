cmake_minimum_required(VERSION 3.7.0)

project(qml_inspiratory)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt5 COMPONENTS Widgets Quick REQUIRED)

add_executable(qml_inspiratory
    resource.qrc
    main.cpp
)

target_link_libraries(qml_inspiratory Qt5::Widgets Qt5::Quick)
