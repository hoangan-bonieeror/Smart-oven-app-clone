cmake_minimum_required(VERSION 3.16)

project(SmartOvenApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appSmartOvenApp
    main.cpp
)

qt_add_qml_module(appSmartOvenApp
    URI SmartOvenApp
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES SetTimerView.qml
    QML_FILES MainView.qml
)
qt_add_resources(appSmartOvenApp "resources"
    PREFIX "/"
    FILES
        assets/powerOff.svg
        assets/avatar.jpg
        assets/settingIcon.svg
        assets/kitchenIcon.svg
        assets/controlIcon.svg
        assets/xmarkIcon.svg
        assets/plusIcon.svg
        assets/minusIcon.svg
)

set_target_properties(appSmartOvenApp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSmartOvenApp
    PRIVATE Qt6::Quick
)

install(TARGETS appSmartOvenApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
