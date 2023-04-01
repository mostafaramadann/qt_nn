

# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()

message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")

if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()










string(APPEND CONAN_CXX_FLAGS " -m64")
string(APPEND CONAN_C_FLAGS " -m64")
string(APPEND CONAN_SHARED_LINKER_FLAGS " -m64")
string(APPEND CONAN_EXE_LINKER_FLAGS " -m64")



message(STATUS "Conan toolchain: C++ Standard 17 with extensions ON")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Extra c, cxx, linkflags and defines


if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Widgets" "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Gui" "/root/.conan2/p/qt61c850c61d3b9/p/bin/archdatadir/bin" "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Core")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Widgets" "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Gui" "/root/.conan2/p/qt61c850c61d3b9/p/bin/archdatadir/bin" "/root/.conan2/p/qt61c850c61d3b9/p/lib/cmake/Qt5Core")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "/root/.conan2/p/qt61c850c61d3b9/p/lib" "/root/.conan2/p/qt61c850c61d3b9/p/bin/archdatadir/plugins/sqldrivers" "/root/.conan2/p/qt61c850c61d3b9/p/bin/archdatadir/plugins/platforms" "/root/.conan2/p/pcre27ea830da3beb2/p/lib" "/root/.conan2/p/doublefcdf67c23cd6/p/lib" "/root/.conan2/p/fontc79604115a3284/p/lib" "/root/.conan2/p/freetc0aefe94e8228/p/lib" "/root/.conan2/p/bzip26d48265eb59fb/p/lib" "/root/.conan2/p/brotl994f900369395/p/lib" "/root/.conan2/p/libuu277ce6e84fe19/p/lib" "/root/.conan2/p/icu5a55394cebfdb/p/lib" "/root/.conan2/p/libjpd735090e768e2/p/lib" "/root/.conan2/p/libpnfcbddcdebc78e/p/lib" "/root/.conan2/p/sqlita3fef0ce9d648/p/lib" "/root/.conan2/p/libmye0958926d8148/p/lib" "/root/.conan2/p/opens3d01fe559d02c/p/lib" "/root/.conan2/p/lz45aef30e187546/p/lib" "/root/.conan2/p/libpq1579916154fff/p/lib" "/root/.conan2/p/odbc9783ba3e20fa9/p/lib" "/root/.conan2/p/libtoc3f2ee7bc68e6/p/lib" "/root/.conan2/p/xkbco90e1d2cb5e3e9/p/lib" "/root/.conan2/p/wayla23850b056cbb8/p/lib" "/root/.conan2/p/libff6940a5a951d2c/p/lib" "/root/.conan2/p/libxm3de5b182f6082/p/lib" "/root/.conan2/p/zlib4be8ddd7aa752/p/lib" "/root/.conan2/p/libicdd86fb778e9b3/p/lib" "/root/.conan2/p/expat7da784642e3d5/p/lib" "/root/.conan2/p/zstd4b805adac59d6/p/lib" "/root/.conan2/p/md4c7c82e770504e3/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "/root/.conan2/p/qt61c850c61d3b9/p/include" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtXml" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtConcurrent" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtOpenGLExtensions" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtOpenGL" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtTest" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtSql" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtNetwork" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtXkbCommonSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtEdidSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtServiceSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtPrintSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtWidgets" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtAccessibilitySupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtThemeSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtFontDatabaseSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtEventDispatcherSupport" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtGui" "/root/.conan2/p/qt61c850c61d3b9/p/include/QtCore" "/root/.conan2/p/qt61c850c61d3b9/p/bin/archdatadir/mkspecs/linux-g++" "/root/.conan2/p/pcre27ea830da3beb2/p/include" "/root/.conan2/p/doublefcdf67c23cd6/p/include" "/root/.conan2/p/fontc79604115a3284/p/include" "/root/.conan2/p/freetc0aefe94e8228/p/include" "/root/.conan2/p/freetc0aefe94e8228/p/include/freetype2" "/root/.conan2/p/bzip26d48265eb59fb/p/include" "/root/.conan2/p/brotl994f900369395/p/include" "/root/.conan2/p/brotl994f900369395/p/include/brotli" "/root/.conan2/p/libuu277ce6e84fe19/p/include" "/root/.conan2/p/libuu277ce6e84fe19/p/include/uuid" "/root/.conan2/p/icu5a55394cebfdb/p/include" "/root/.conan2/p/libjpd735090e768e2/p/include" "/root/.conan2/p/libpnfcbddcdebc78e/p/include" "/root/.conan2/p/sqlita3fef0ce9d648/p/include" "/root/.conan2/p/libmye0958926d8148/p/include" "/root/.conan2/p/opens3d01fe559d02c/p/include" "/root/.conan2/p/lz45aef30e187546/p/include" "/root/.conan2/p/libpq1579916154fff/p/include" "/root/.conan2/p/odbc9783ba3e20fa9/p/include" "/root/.conan2/p/libtoc3f2ee7bc68e6/p/include" "/root/.conan2/p/xkbco90e1d2cb5e3e9/p/include" "/root/.conan2/p/wayla23850b056cbb8/p/include" "/root/.conan2/p/libff6940a5a951d2c/p/include" "/root/.conan2/p/libxm3de5b182f6082/p/include" "/root/.conan2/p/libxm3de5b182f6082/p/include/libxml2" "/root/.conan2/p/zlib4be8ddd7aa752/p/include" "/root/.conan2/p/libicdd86fb778e9b3/p/include" "/root/.conan2/p/expat7da784642e3d5/p/include" "/usr/include/uuid" "/root/.conan2/p/zstd4b805adac59d6/p/include" "/root/.conan2/p/md4c7c82e770504e3/p/include")



if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "/home/mostafa/CLionProjects/qt_nn/build:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "/home/mostafa/CLionProjects/qt_nn/build:")
endif()




# Variables
# Variables  per configuration


# Preprocessor definitions
# Preprocessor definitions per configuration
