########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(md4c_FIND_QUIETLY)
    set(md4c_MESSAGE_MODE VERBOSE)
else()
    set(md4c_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/md4cTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${md4c_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(md4c_VERSION_STRING "0.4.8")
set(md4c_INCLUDE_DIRS ${md4c_INCLUDE_DIRS_RELEASE} )
set(md4c_INCLUDE_DIR ${md4c_INCLUDE_DIRS_RELEASE} )
set(md4c_LIBRARIES ${md4c_LIBRARIES_RELEASE} )
set(md4c_DEFINITIONS ${md4c_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${md4c_BUILD_MODULES_PATHS_RELEASE} )
    message(${md4c_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


