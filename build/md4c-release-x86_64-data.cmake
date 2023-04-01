########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND md4c_COMPONENT_NAMES md4c::md4c md4c::md4c-html)
list(REMOVE_DUPLICATES md4c_COMPONENT_NAMES)
set(md4c_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(md4c_PACKAGE_FOLDER_RELEASE "/root/.conan2/p/md4c7c82e770504e3/p")
set(md4c_BUILD_MODULES_PATHS_RELEASE )


set(md4c_INCLUDE_DIRS_RELEASE )
set(md4c_RES_DIRS_RELEASE )
set(md4c_DEFINITIONS_RELEASE )
set(md4c_SHARED_LINK_FLAGS_RELEASE )
set(md4c_EXE_LINK_FLAGS_RELEASE )
set(md4c_OBJECTS_RELEASE )
set(md4c_COMPILE_DEFINITIONS_RELEASE )
set(md4c_COMPILE_OPTIONS_C_RELEASE )
set(md4c_COMPILE_OPTIONS_CXX_RELEASE )
set(md4c_LIB_DIRS_RELEASE "${md4c_PACKAGE_FOLDER_RELEASE}/lib")
set(md4c_BIN_DIRS_RELEASE )
set(md4c_LIBRARY_TYPE_RELEASE STATIC)
set(md4c_IS_HOST_WINDOWS_RELEASE 0)
set(md4c_LIBS_RELEASE md4c-html md4c)
set(md4c_SYSTEM_LIBS_RELEASE )
set(md4c_FRAMEWORK_DIRS_RELEASE )
set(md4c_FRAMEWORKS_RELEASE )
set(md4c_BUILD_DIRS_RELEASE )
set(md4c_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(md4c_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_COMPILE_OPTIONS_C_RELEASE}>")
set(md4c_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_EXE_LINK_FLAGS_RELEASE}>")


set(md4c_COMPONENTS_RELEASE md4c::md4c md4c::md4c-html)
########### COMPONENT md4c::md4c-html VARIABLES ############################################

set(md4c_md4c_md4c-html_INCLUDE_DIRS_RELEASE )
set(md4c_md4c_md4c-html_LIB_DIRS_RELEASE "${md4c_PACKAGE_FOLDER_RELEASE}/lib")
set(md4c_md4c_md4c-html_BIN_DIRS_RELEASE )
set(md4c_md4c_md4c-html_LIBRARY_TYPE_RELEASE STATIC)
set(md4c_md4c_md4c-html_IS_HOST_WINDOWS_RELEASE 0)
set(md4c_md4c_md4c-html_RES_DIRS_RELEASE )
set(md4c_md4c_md4c-html_DEFINITIONS_RELEASE )
set(md4c_md4c_md4c-html_OBJECTS_RELEASE )
set(md4c_md4c_md4c-html_COMPILE_DEFINITIONS_RELEASE )
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_C_RELEASE "")
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_CXX_RELEASE "")
set(md4c_md4c_md4c-html_LIBS_RELEASE md4c-html)
set(md4c_md4c_md4c-html_SYSTEM_LIBS_RELEASE )
set(md4c_md4c_md4c-html_FRAMEWORK_DIRS_RELEASE )
set(md4c_md4c_md4c-html_FRAMEWORKS_RELEASE )
set(md4c_md4c_md4c-html_DEPENDENCIES_RELEASE md4c::md4c)
set(md4c_md4c_md4c-html_SHARED_LINK_FLAGS_RELEASE )
set(md4c_md4c_md4c-html_EXE_LINK_FLAGS_RELEASE )
set(md4c_md4c_md4c-html_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(md4c_md4c_md4c-html_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_md4c_md4c-html_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_md4c_md4c-html_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_md4c_md4c-html_EXE_LINK_FLAGS_RELEASE}>
)
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_md4c_md4c-html_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_md4c_md4c-html_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT md4c::md4c VARIABLES ############################################

set(md4c_md4c_md4c_INCLUDE_DIRS_RELEASE )
set(md4c_md4c_md4c_LIB_DIRS_RELEASE "${md4c_PACKAGE_FOLDER_RELEASE}/lib")
set(md4c_md4c_md4c_BIN_DIRS_RELEASE )
set(md4c_md4c_md4c_LIBRARY_TYPE_RELEASE STATIC)
set(md4c_md4c_md4c_IS_HOST_WINDOWS_RELEASE 0)
set(md4c_md4c_md4c_RES_DIRS_RELEASE )
set(md4c_md4c_md4c_DEFINITIONS_RELEASE )
set(md4c_md4c_md4c_OBJECTS_RELEASE )
set(md4c_md4c_md4c_COMPILE_DEFINITIONS_RELEASE )
set(md4c_md4c_md4c_COMPILE_OPTIONS_C_RELEASE "")
set(md4c_md4c_md4c_COMPILE_OPTIONS_CXX_RELEASE "")
set(md4c_md4c_md4c_LIBS_RELEASE md4c)
set(md4c_md4c_md4c_SYSTEM_LIBS_RELEASE )
set(md4c_md4c_md4c_FRAMEWORK_DIRS_RELEASE )
set(md4c_md4c_md4c_FRAMEWORKS_RELEASE )
set(md4c_md4c_md4c_DEPENDENCIES_RELEASE )
set(md4c_md4c_md4c_SHARED_LINK_FLAGS_RELEASE )
set(md4c_md4c_md4c_EXE_LINK_FLAGS_RELEASE )
set(md4c_md4c_md4c_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(md4c_md4c_md4c_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_md4c_md4c_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_md4c_md4c_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_md4c_md4c_EXE_LINK_FLAGS_RELEASE}>
)
set(md4c_md4c_md4c_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_md4c_md4c_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_md4c_md4c_COMPILE_OPTIONS_C_RELEASE}>")