########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(fontconfig_COMPONENT_NAMES "")
list(APPEND fontconfig_FIND_DEPENDENCY_NAMES freetype libuuid expat)
list(REMOVE_DUPLICATES fontconfig_FIND_DEPENDENCY_NAMES)
set(freetype_FIND_MODE "NO_MODULE")
set(libuuid_FIND_MODE "NO_MODULE")
set(expat_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(fontconfig_PACKAGE_FOLDER_RELEASE "/root/.conan2/p/fontc79604115a3284/p")
set(fontconfig_BUILD_MODULES_PATHS_RELEASE )


set(fontconfig_INCLUDE_DIRS_RELEASE )
set(fontconfig_RES_DIRS_RELEASE )
set(fontconfig_DEFINITIONS_RELEASE )
set(fontconfig_SHARED_LINK_FLAGS_RELEASE )
set(fontconfig_EXE_LINK_FLAGS_RELEASE )
set(fontconfig_OBJECTS_RELEASE )
set(fontconfig_COMPILE_DEFINITIONS_RELEASE )
set(fontconfig_COMPILE_OPTIONS_C_RELEASE )
set(fontconfig_COMPILE_OPTIONS_CXX_RELEASE )
set(fontconfig_LIB_DIRS_RELEASE "${fontconfig_PACKAGE_FOLDER_RELEASE}/lib")
set(fontconfig_BIN_DIRS_RELEASE )
set(fontconfig_LIBRARY_TYPE_RELEASE STATIC)
set(fontconfig_IS_HOST_WINDOWS_RELEASE 0)
set(fontconfig_LIBS_RELEASE fontconfig)
set(fontconfig_SYSTEM_LIBS_RELEASE m pthread)
set(fontconfig_FRAMEWORK_DIRS_RELEASE )
set(fontconfig_FRAMEWORKS_RELEASE )
set(fontconfig_BUILD_DIRS_RELEASE )
set(fontconfig_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(fontconfig_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${fontconfig_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${fontconfig_COMPILE_OPTIONS_C_RELEASE}>")
set(fontconfig_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${fontconfig_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${fontconfig_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${fontconfig_EXE_LINK_FLAGS_RELEASE}>")


set(fontconfig_COMPONENTS_RELEASE )