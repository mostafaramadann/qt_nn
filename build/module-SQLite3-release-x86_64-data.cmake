########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND sqlite3_COMPONENT_NAMES SQLite::SQLite3)
list(REMOVE_DUPLICATES sqlite3_COMPONENT_NAMES)
set(sqlite3_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(sqlite3_PACKAGE_FOLDER_RELEASE "/root/.conan2/p/sqlita3fef0ce9d648/p")
set(sqlite3_BUILD_MODULES_PATHS_RELEASE )


set(sqlite3_INCLUDE_DIRS_RELEASE )
set(sqlite3_RES_DIRS_RELEASE )
set(sqlite3_DEFINITIONS_RELEASE )
set(sqlite3_SHARED_LINK_FLAGS_RELEASE )
set(sqlite3_EXE_LINK_FLAGS_RELEASE )
set(sqlite3_OBJECTS_RELEASE )
set(sqlite3_COMPILE_DEFINITIONS_RELEASE )
set(sqlite3_COMPILE_OPTIONS_C_RELEASE )
set(sqlite3_COMPILE_OPTIONS_CXX_RELEASE )
set(sqlite3_LIB_DIRS_RELEASE "${sqlite3_PACKAGE_FOLDER_RELEASE}/lib")
set(sqlite3_BIN_DIRS_RELEASE )
set(sqlite3_LIBRARY_TYPE_RELEASE STATIC)
set(sqlite3_IS_HOST_WINDOWS_RELEASE 0)
set(sqlite3_LIBS_RELEASE sqlite3)
set(sqlite3_SYSTEM_LIBS_RELEASE pthread dl m)
set(sqlite3_FRAMEWORK_DIRS_RELEASE )
set(sqlite3_FRAMEWORKS_RELEASE )
set(sqlite3_BUILD_DIRS_RELEASE )
set(sqlite3_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(sqlite3_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${sqlite3_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${sqlite3_COMPILE_OPTIONS_C_RELEASE}>")
set(sqlite3_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${sqlite3_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${sqlite3_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${sqlite3_EXE_LINK_FLAGS_RELEASE}>")


set(sqlite3_COMPONENTS_RELEASE SQLite::SQLite3)
########### COMPONENT SQLite::SQLite3 VARIABLES ############################################

set(sqlite3_SQLite_SQLite3_INCLUDE_DIRS_RELEASE )
set(sqlite3_SQLite_SQLite3_LIB_DIRS_RELEASE "${sqlite3_PACKAGE_FOLDER_RELEASE}/lib")
set(sqlite3_SQLite_SQLite3_BIN_DIRS_RELEASE )
set(sqlite3_SQLite_SQLite3_LIBRARY_TYPE_RELEASE STATIC)
set(sqlite3_SQLite_SQLite3_IS_HOST_WINDOWS_RELEASE 0)
set(sqlite3_SQLite_SQLite3_RES_DIRS_RELEASE )
set(sqlite3_SQLite_SQLite3_DEFINITIONS_RELEASE )
set(sqlite3_SQLite_SQLite3_OBJECTS_RELEASE )
set(sqlite3_SQLite_SQLite3_COMPILE_DEFINITIONS_RELEASE )
set(sqlite3_SQLite_SQLite3_COMPILE_OPTIONS_C_RELEASE "")
set(sqlite3_SQLite_SQLite3_COMPILE_OPTIONS_CXX_RELEASE "")
set(sqlite3_SQLite_SQLite3_LIBS_RELEASE sqlite3)
set(sqlite3_SQLite_SQLite3_SYSTEM_LIBS_RELEASE pthread dl m)
set(sqlite3_SQLite_SQLite3_FRAMEWORK_DIRS_RELEASE )
set(sqlite3_SQLite_SQLite3_FRAMEWORKS_RELEASE )
set(sqlite3_SQLite_SQLite3_DEPENDENCIES_RELEASE )
set(sqlite3_SQLite_SQLite3_SHARED_LINK_FLAGS_RELEASE )
set(sqlite3_SQLite_SQLite3_EXE_LINK_FLAGS_RELEASE )
set(sqlite3_SQLite_SQLite3_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(sqlite3_SQLite_SQLite3_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${sqlite3_SQLite_SQLite3_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${sqlite3_SQLite_SQLite3_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${sqlite3_SQLite_SQLite3_EXE_LINK_FLAGS_RELEASE}>
)
set(sqlite3_SQLite_SQLite3_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${sqlite3_SQLite_SQLite3_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${sqlite3_SQLite_SQLite3_COMPILE_OPTIONS_C_RELEASE}>")