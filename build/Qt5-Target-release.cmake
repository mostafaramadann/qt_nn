# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(qt_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(qt_FRAMEWORKS_FOUND_RELEASE "${qt_FRAMEWORKS_RELEASE}" "${qt_FRAMEWORK_DIRS_RELEASE}")

set(qt_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET qt_DEPS_TARGET)
    add_library(qt_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET qt_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${qt_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${qt_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB;pcre2::pcre2;double-conversion::double-conversion;icu::icu;zstd::libzstd_static;freetype;PNG::PNG;Fontconfig::Fontconfig;xkbcommon::xkbcommon;xorg::xorg;opengl::opengl;JPEG::JPEG;md4c::md4c-html;Qt5::Core;Qt5::Gui;Qt5::Widgets;xkbcommon::libxkbcommon-x11;Qt5::ServiceSupport;Qt5::ThemeSupport;Qt5::FontDatabaseSupport;Qt5::EdidSupport;Qt5::XkbCommonSupport;Qt5::XcbQpa;SQLite::SQLite3;PostgreSQL::PostgreSQL;libmysqlclient::libmysqlclient;ODBC::ODBC;openssl::openssl>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### qt_DEPS_TARGET to all of them
conan_package_library_targets("${qt_LIBS_RELEASE}"    # libraries
                              "${qt_LIB_DIRS_RELEASE}" # package_libdir
                              "${qt_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_LIBRARY_TYPE_RELEASE}"
                              "${qt_IS_HOST_WINDOWS_RELEASE}"
                              qt_DEPS_TARGET
                              qt_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "qt"    # package_name
                              "${qt_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${qt_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT Qt5::Xml #############

        set(qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Xml_FRAMEWORKS_RELEASE}" "${qt_Qt5_Xml_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Xml_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Xml_DEPS_TARGET)
            add_library(qt_Qt5_Xml_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Xml_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Xml_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Xml_LIBS_RELEASE}"
                              "${qt_Qt5_Xml_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Xml_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Xml_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Xml_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Xml_DEPS_TARGET
                              qt_Qt5_Xml_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Xml"
                              "${qt_Qt5_Xml_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Xml
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Xml_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Xml
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Xml_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Xml PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Xml PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Xml PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Xml PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Xml PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Concurrent #############

        set(qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Concurrent_FRAMEWORKS_RELEASE}" "${qt_Qt5_Concurrent_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Concurrent_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Concurrent_DEPS_TARGET)
            add_library(qt_Qt5_Concurrent_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Concurrent_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Concurrent_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Concurrent_LIBS_RELEASE}"
                              "${qt_Qt5_Concurrent_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Concurrent_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Concurrent_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Concurrent_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Concurrent_DEPS_TARGET
                              qt_Qt5_Concurrent_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Concurrent"
                              "${qt_Qt5_Concurrent_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Concurrent
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Concurrent_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Concurrent
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Concurrent_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Concurrent PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Concurrent PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Concurrent PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Concurrent PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Concurrent PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::OpenGLExtensions #############

        set(qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_OpenGLExtensions_FRAMEWORKS_RELEASE}" "${qt_Qt5_OpenGLExtensions_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_OpenGLExtensions_DEPS_TARGET)
            add_library(qt_Qt5_OpenGLExtensions_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_OpenGLExtensions_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_OpenGLExtensions_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_OpenGLExtensions_LIBS_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_OpenGLExtensions_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_OpenGLExtensions_DEPS_TARGET
                              qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_OpenGLExtensions"
                              "${qt_Qt5_OpenGLExtensions_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::OpenGLExtensions
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_OpenGLExtensions_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::OpenGLExtensions
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_OpenGLExtensions_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::OpenGLExtensions PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGLExtensions PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGLExtensions PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGLExtensions PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGLExtensions PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::OpenGL #############

        set(qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_OpenGL_FRAMEWORKS_RELEASE}" "${qt_Qt5_OpenGL_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_OpenGL_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_OpenGL_DEPS_TARGET)
            add_library(qt_Qt5_OpenGL_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_OpenGL_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_OpenGL_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_OpenGL_LIBS_RELEASE}"
                              "${qt_Qt5_OpenGL_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_OpenGL_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_OpenGL_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_OpenGL_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_OpenGL_DEPS_TARGET
                              qt_Qt5_OpenGL_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_OpenGL"
                              "${qt_Qt5_OpenGL_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::OpenGL
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_OpenGL_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::OpenGL
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_OpenGL_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::OpenGL PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGL PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGL PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGL PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::OpenGL PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Test #############

        set(qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Test_FRAMEWORKS_RELEASE}" "${qt_Qt5_Test_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Test_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Test_DEPS_TARGET)
            add_library(qt_Qt5_Test_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Test_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Test_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Test_LIBS_RELEASE}"
                              "${qt_Qt5_Test_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Test_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Test_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Test_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Test_DEPS_TARGET
                              qt_Qt5_Test_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Test"
                              "${qt_Qt5_Test_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Test
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Test_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Test
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Test_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Test PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Test PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Test PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Test PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Test PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Sql #############

        set(qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Sql_FRAMEWORKS_RELEASE}" "${qt_Qt5_Sql_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Sql_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Sql_DEPS_TARGET)
            add_library(qt_Qt5_Sql_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Sql_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Sql_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Sql_LIBS_RELEASE}"
                              "${qt_Qt5_Sql_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Sql_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Sql_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Sql_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Sql_DEPS_TARGET
                              qt_Qt5_Sql_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Sql"
                              "${qt_Qt5_Sql_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Sql
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Sql_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Sql
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Sql_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Sql PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Sql PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Sql PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Sql PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Sql PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Network #############

        set(qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Network_FRAMEWORKS_RELEASE}" "${qt_Qt5_Network_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Network_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Network_DEPS_TARGET)
            add_library(qt_Qt5_Network_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Network_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Network_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Network_LIBS_RELEASE}"
                              "${qt_Qt5_Network_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Network_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Network_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Network_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Network_DEPS_TARGET
                              qt_Qt5_Network_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Network"
                              "${qt_Qt5_Network_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Network
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Network_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Network
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Network_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Network PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Network PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Network PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Network PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Network PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::QODBCDriverPlugin #############

        set(qt_Qt5_QODBCDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QODBCDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QODBCDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QODBCDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QODBCDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QODBCDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QODBCDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QODBCDriverPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QODBCDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QODBCDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QODBCDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QODBCDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QODBCDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QODBCDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QODBCDriverPlugin_DEPS_TARGET
                              qt_Qt5_QODBCDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QODBCDriverPlugin"
                              "${qt_Qt5_QODBCDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QODBCDriverPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_QODBCDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QODBCDriverPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QODBCDriverPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::QODBCDriverPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QODBCDriverPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QODBCDriverPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QODBCDriverPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QODBCDriverPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::QMySQLDriverPlugin #############

        set(qt_Qt5_QMySQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QMySQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QMySQLDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QMySQLDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QMySQLDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QMySQLDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QMySQLDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QMySQLDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QMySQLDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QMySQLDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET
                              qt_Qt5_QMySQLDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QMySQLDriverPlugin"
                              "${qt_Qt5_QMySQLDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QMySQLDriverPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_QMySQLDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QMySQLDriverPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QMySQLDriverPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::QMySQLDriverPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QMySQLDriverPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QMySQLDriverPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QMySQLDriverPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QMySQLDriverPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::QPSQLDriverPlugin #############

        set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QPSQLDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QPSQLDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QPSQLDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET
                              qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QPSQLDriverPlugin"
                              "${qt_Qt5_QPSQLDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QPSQLDriverPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_QPSQLDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QPSQLDriverPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::QPSQLDriverPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QPSQLDriverPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QPSQLDriverPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QPSQLDriverPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QPSQLDriverPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::QSQLiteDriverPlugin #############

        set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QSQLiteDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QSQLiteDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET
                              qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QSQLiteDriverPlugin"
                              "${qt_Qt5_QSQLiteDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QSQLiteDriverPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_QSQLiteDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QSQLiteDriverPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::QSQLiteDriverPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QSQLiteDriverPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QSQLiteDriverPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QSQLiteDriverPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QSQLiteDriverPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::QXcbIntegrationPlugin #############

        set(qt_Qt5_QXcbIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QXcbIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QXcbIntegrationPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QXcbIntegrationPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QXcbIntegrationPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QXcbIntegrationPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QXcbIntegrationPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QXcbIntegrationPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QXcbIntegrationPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QXcbIntegrationPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET
                              qt_Qt5_QXcbIntegrationPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QXcbIntegrationPlugin"
                              "${qt_Qt5_QXcbIntegrationPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QXcbIntegrationPlugin
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_QXcbIntegrationPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QXcbIntegrationPlugin
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QXcbIntegrationPlugin_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::QXcbIntegrationPlugin PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QXcbIntegrationPlugin PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QXcbIntegrationPlugin PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QXcbIntegrationPlugin PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::QXcbIntegrationPlugin PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::XcbQpa #############

        set(qt_Qt5_XcbQpa_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_XcbQpa_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_XcbQpa_FRAMEWORKS_RELEASE}" "${qt_Qt5_XcbQpa_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_XcbQpa_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_XcbQpa_DEPS_TARGET)
            add_library(qt_Qt5_XcbQpa_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_XcbQpa_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_XcbQpa_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_XcbQpa_LIBS_RELEASE}"
                              "${qt_Qt5_XcbQpa_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_XcbQpa_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_XcbQpa_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_XcbQpa_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_XcbQpa_DEPS_TARGET
                              qt_Qt5_XcbQpa_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_XcbQpa"
                              "${qt_Qt5_XcbQpa_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::XcbQpa
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_XcbQpa_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::XcbQpa
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_XcbQpa_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::XcbQpa PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XcbQpa PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XcbQpa PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XcbQpa PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XcbQpa PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XcbQpa_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::XkbCommonSupport #############

        set(qt_Qt5_XkbCommonSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_XkbCommonSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_XkbCommonSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_XkbCommonSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_XkbCommonSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_XkbCommonSupport_DEPS_TARGET)
            add_library(qt_Qt5_XkbCommonSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_XkbCommonSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_XkbCommonSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_XkbCommonSupport_LIBS_RELEASE}"
                              "${qt_Qt5_XkbCommonSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_XkbCommonSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_XkbCommonSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_XkbCommonSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_XkbCommonSupport_DEPS_TARGET
                              qt_Qt5_XkbCommonSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_XkbCommonSupport"
                              "${qt_Qt5_XkbCommonSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::XkbCommonSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_XkbCommonSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::XkbCommonSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_XkbCommonSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::XkbCommonSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XkbCommonSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XkbCommonSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XkbCommonSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::XkbCommonSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::EdidSupport #############

        set(qt_Qt5_EdidSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_EdidSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_EdidSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_EdidSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_EdidSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_EdidSupport_DEPS_TARGET)
            add_library(qt_Qt5_EdidSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_EdidSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_EdidSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_EdidSupport_LIBS_RELEASE}"
                              "${qt_Qt5_EdidSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_EdidSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_EdidSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_EdidSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_EdidSupport_DEPS_TARGET
                              qt_Qt5_EdidSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_EdidSupport"
                              "${qt_Qt5_EdidSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::EdidSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_EdidSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::EdidSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_EdidSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::EdidSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EdidSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EdidSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EdidSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EdidSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EdidSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::ServiceSupport #############

        set(qt_Qt5_ServiceSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_ServiceSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_ServiceSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_ServiceSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_ServiceSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_ServiceSupport_DEPS_TARGET)
            add_library(qt_Qt5_ServiceSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_ServiceSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_ServiceSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_ServiceSupport_LIBS_RELEASE}"
                              "${qt_Qt5_ServiceSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_ServiceSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_ServiceSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_ServiceSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_ServiceSupport_DEPS_TARGET
                              qt_Qt5_ServiceSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_ServiceSupport"
                              "${qt_Qt5_ServiceSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::ServiceSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_ServiceSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::ServiceSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_ServiceSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::ServiceSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ServiceSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ServiceSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ServiceSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ServiceSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ServiceSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::PrintSupport #############

        set(qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_PrintSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_PrintSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_PrintSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_PrintSupport_DEPS_TARGET)
            add_library(qt_Qt5_PrintSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_PrintSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_PrintSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_PrintSupport_LIBS_RELEASE}"
                              "${qt_Qt5_PrintSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_PrintSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_PrintSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_PrintSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_PrintSupport_DEPS_TARGET
                              qt_Qt5_PrintSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_PrintSupport"
                              "${qt_Qt5_PrintSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::PrintSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_PrintSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::PrintSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_PrintSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::PrintSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::PrintSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::PrintSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::PrintSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::PrintSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Widgets #############

        set(qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Widgets_FRAMEWORKS_RELEASE}" "${qt_Qt5_Widgets_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Widgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Widgets_DEPS_TARGET)
            add_library(qt_Qt5_Widgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Widgets_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Widgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Widgets_LIBS_RELEASE}"
                              "${qt_Qt5_Widgets_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Widgets_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Widgets_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Widgets_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Widgets_DEPS_TARGET
                              qt_Qt5_Widgets_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Widgets"
                              "${qt_Qt5_Widgets_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Widgets
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Widgets_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Widgets
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Widgets_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Widgets PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Widgets PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Widgets PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Widgets PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Widgets PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::AccessibilitySupport #############

        set(qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_AccessibilitySupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_AccessibilitySupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_AccessibilitySupport_DEPS_TARGET)
            add_library(qt_Qt5_AccessibilitySupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_AccessibilitySupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_AccessibilitySupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_AccessibilitySupport_LIBS_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_AccessibilitySupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_AccessibilitySupport_DEPS_TARGET
                              qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_AccessibilitySupport"
                              "${qt_Qt5_AccessibilitySupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::AccessibilitySupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_AccessibilitySupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::AccessibilitySupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_AccessibilitySupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::AccessibilitySupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::AccessibilitySupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::AccessibilitySupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::AccessibilitySupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::AccessibilitySupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::ThemeSupport #############

        set(qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_ThemeSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_ThemeSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_ThemeSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_ThemeSupport_DEPS_TARGET)
            add_library(qt_Qt5_ThemeSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_ThemeSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_ThemeSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_ThemeSupport_LIBS_RELEASE}"
                              "${qt_Qt5_ThemeSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_ThemeSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_ThemeSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_ThemeSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_ThemeSupport_DEPS_TARGET
                              qt_Qt5_ThemeSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_ThemeSupport"
                              "${qt_Qt5_ThemeSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::ThemeSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_ThemeSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::ThemeSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_ThemeSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::ThemeSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ThemeSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ThemeSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ThemeSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::ThemeSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::FontDatabaseSupport #############

        set(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_FontDatabaseSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_FontDatabaseSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_FontDatabaseSupport_DEPS_TARGET)
            add_library(qt_Qt5_FontDatabaseSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_FontDatabaseSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_FontDatabaseSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_FontDatabaseSupport_LIBS_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_FontDatabaseSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_FontDatabaseSupport_DEPS_TARGET
                              qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_FontDatabaseSupport"
                              "${qt_Qt5_FontDatabaseSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::FontDatabaseSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_FontDatabaseSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::FontDatabaseSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_FontDatabaseSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::FontDatabaseSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::FontDatabaseSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::FontDatabaseSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::FontDatabaseSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::FontDatabaseSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::EventDispatcherSupport #############

        set(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_EventDispatcherSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_EventDispatcherSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_EventDispatcherSupport_DEPS_TARGET)
            add_library(qt_Qt5_EventDispatcherSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_EventDispatcherSupport_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_EventDispatcherSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_EventDispatcherSupport_LIBS_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_EventDispatcherSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_EventDispatcherSupport_DEPS_TARGET
                              qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_EventDispatcherSupport"
                              "${qt_Qt5_EventDispatcherSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::EventDispatcherSupport
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_EventDispatcherSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::EventDispatcherSupport
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_EventDispatcherSupport_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::EventDispatcherSupport PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EventDispatcherSupport PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EventDispatcherSupport PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EventDispatcherSupport PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::EventDispatcherSupport PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Gui #############

        set(qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Gui_FRAMEWORKS_RELEASE}" "${qt_Qt5_Gui_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Gui_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Gui_DEPS_TARGET)
            add_library(qt_Qt5_Gui_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Gui_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Gui_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Gui_LIBS_RELEASE}"
                              "${qt_Qt5_Gui_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Gui_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Gui_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Gui_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Gui_DEPS_TARGET
                              qt_Qt5_Gui_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Gui"
                              "${qt_Qt5_Gui_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Gui
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Gui_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Gui
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Gui_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Gui PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Gui PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Gui PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Gui PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Gui PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT Qt5::Core #############

        set(qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Core_FRAMEWORKS_RELEASE}" "${qt_Qt5_Core_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Core_DEPS_TARGET)
            add_library(qt_Qt5_Core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Core_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Core_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Core_LIBS_RELEASE}"
                              "${qt_Qt5_Core_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Core_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Core_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Core_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Core_DEPS_TARGET
                              qt_Qt5_Core_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Core"
                              "${qt_Qt5_Core_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Core
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LIBRARIES_TARGETS}>
                     APPEND)

        if("${qt_Qt5_Core_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Core
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Core_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Qt5::Core PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Core PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Core PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LIB_DIRS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Core PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET Qt5::Core PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Xml APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Concurrent APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::OpenGLExtensions APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::OpenGL APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Test APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Sql APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Network APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QODBCDriverPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QMySQLDriverPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QPSQLDriverPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QSQLiteDriverPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QXcbIntegrationPlugin APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::XcbQpa APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::XkbCommonSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::EdidSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::ServiceSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::PrintSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Widgets APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::AccessibilitySupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::ThemeSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::FontDatabaseSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::EventDispatcherSupport APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Gui APPEND)
    set_property(TARGET qt::qt PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Core APPEND)

########## For the modules (FindXXX)
set(qt_LIBRARIES_RELEASE qt::qt)
