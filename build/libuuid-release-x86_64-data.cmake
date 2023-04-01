########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libuuid_COMPONENT_NAMES "")
set(libuuid_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libuuid_PACKAGE_FOLDER_RELEASE "/root/.conan2/p/libuu277ce6e84fe19/p")
set(libuuid_BUILD_MODULES_PATHS_RELEASE )


set(libuuid_INCLUDE_DIRS_RELEASE )
set(libuuid_RES_DIRS_RELEASE )
set(libuuid_DEFINITIONS_RELEASE )
set(libuuid_SHARED_LINK_FLAGS_RELEASE )
set(libuuid_EXE_LINK_FLAGS_RELEASE )
set(libuuid_OBJECTS_RELEASE )
set(libuuid_COMPILE_DEFINITIONS_RELEASE )
set(libuuid_COMPILE_OPTIONS_C_RELEASE )
set(libuuid_COMPILE_OPTIONS_CXX_RELEASE )
set(libuuid_LIB_DIRS_RELEASE "${libuuid_PACKAGE_FOLDER_RELEASE}/lib")
set(libuuid_BIN_DIRS_RELEASE )
set(libuuid_LIBRARY_TYPE_RELEASE STATIC)
set(libuuid_IS_HOST_WINDOWS_RELEASE 0)
set(libuuid_LIBS_RELEASE uuid)
set(libuuid_SYSTEM_LIBS_RELEASE )
set(libuuid_FRAMEWORK_DIRS_RELEASE )
set(libuuid_FRAMEWORKS_RELEASE )
set(libuuid_BUILD_DIRS_RELEASE )
set(libuuid_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(libuuid_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libuuid_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libuuid_COMPILE_OPTIONS_C_RELEASE}>")
set(libuuid_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libuuid_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libuuid_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libuuid_EXE_LINK_FLAGS_RELEASE}>")


set(libuuid_COMPONENTS_RELEASE )