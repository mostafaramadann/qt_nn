# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libuuid_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(libuuid_FRAMEWORKS_FOUND_RELEASE "${libuuid_FRAMEWORKS_RELEASE}" "${libuuid_FRAMEWORK_DIRS_RELEASE}")

set(libuuid_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libuuid_DEPS_TARGET)
    add_library(libuuid_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libuuid_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${libuuid_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${libuuid_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libuuid_DEPS_TARGET to all of them
conan_package_library_targets("${libuuid_LIBS_RELEASE}"    # libraries
                              "${libuuid_LIB_DIRS_RELEASE}" # package_libdir
                              "${libuuid_BIN_DIRS_RELEASE}" # package_bindir
                              "${libuuid_LIBRARY_TYPE_RELEASE}"
                              "${libuuid_IS_HOST_WINDOWS_RELEASE}"
                              libuuid_DEPS_TARGET
                              libuuid_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "libuuid"    # package_name
                              "${libuuid_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libuuid_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${libuuid_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${libuuid_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libuuid_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET libuuid::libuuid
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     libuuid_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${libuuid_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${libuuid_INCLUDE_DIRS_RELEASE}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${libuuid_LIB_DIRS_RELEASE}> APPEND)
    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${libuuid_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET libuuid::libuuid
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${libuuid_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(libuuid_LIBRARIES_RELEASE libuuid::libuuid)
