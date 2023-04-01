########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND qt_COMPONENT_NAMES Qt5::Core Qt5::Gui Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::Widgets Qt5::PrintSupport Qt5::ServiceSupport Qt5::EdidSupport Qt5::XkbCommonSupport Qt5::XcbQpa Qt5::QXcbIntegrationPlugin Qt5::QSQLiteDriverPlugin Qt5::QPSQLDriverPlugin Qt5::QMySQLDriverPlugin Qt5::QODBCDriverPlugin Qt5::Network Qt5::Sql Qt5::Test Qt5::OpenGL Qt5::OpenGLExtensions Qt5::Concurrent Qt5::Xml)
list(REMOVE_DUPLICATES qt_COMPONENT_NAMES)
list(APPEND qt_FIND_DEPENDENCY_NAMES PCRE2 double-conversion Fontconfig freetype ICU JPEG PNG SQLite3 libmysqlclient OpenSSL PostgreSQL ODBC xkbcommon ZLIB xorg opengl_system zstd md4c)
list(REMOVE_DUPLICATES qt_FIND_DEPENDENCY_NAMES)
set(PCRE2_FIND_MODE "NO_MODULE")
set(double-conversion_FIND_MODE "NO_MODULE")
set(Fontconfig_FIND_MODE "NO_MODULE")
set(freetype_FIND_MODE "NO_MODULE")
set(ICU_FIND_MODE "NO_MODULE")
set(JPEG_FIND_MODE "NO_MODULE")
set(PNG_FIND_MODE "NO_MODULE")
set(SQLite3_FIND_MODE "NO_MODULE")
set(libmysqlclient_FIND_MODE "NO_MODULE")
set(OpenSSL_FIND_MODE "NO_MODULE")
set(PostgreSQL_FIND_MODE "NO_MODULE")
set(ODBC_FIND_MODE "NO_MODULE")
set(xkbcommon_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")
set(xorg_FIND_MODE "NO_MODULE")
set(opengl_system_FIND_MODE "NO_MODULE")
set(zstd_FIND_MODE "NO_MODULE")
set(md4c_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(qt_PACKAGE_FOLDER_RELEASE "/root/.conan2/p/qt61c850c61d3b9/p")
set(qt_BUILD_MODULES_PATHS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Core/conan_qt_core_extras.cmake"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Core/conan_qt_qt5_coreprivate.cmake"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Core/Qt5CoreMacros.cmake"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Gui/conan_qt_qt5_guiprivate.cmake"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Widgets/conan_qt_qt5_widgetsprivate.cmake"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Widgets/Qt5WidgetsMacros.cmake")


set(qt_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtXml"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtConcurrent"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtOpenGLExtensions"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtOpenGL"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtTest"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtSql"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtNetwork"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtXkbCommonSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtEdidSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtServiceSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtPrintSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtWidgets"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtAccessibilitySupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtThemeSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtFontDatabaseSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtEventDispatcherSupport"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtGui"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtCore"
			"${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/mkspecs/linux-g++")
set(qt_RES_DIRS_RELEASE )
set(qt_DEFINITIONS_RELEASE "-DQT_XML_LIB"
			"-DQT_CONCURRENT_LIB"
			"-DQT_OPENGLEXTENSIONS_LIB"
			"-DQT_OPENGL_LIB"
			"-DQT_TEST_LIB"
			"-DQT_SQL_LIB"
			"-DQT_NETWORK_LIB"
			"-DQT_XCBQPA_LIB"
			"-DQT_XKBCOMMONSUPPORT_LIB"
			"-DQT_EDIDSUPPORT_LIB"
			"-DQT_SERVICESUPPORT_LIB"
			"-DQT_PRINTSUPPORT_LIB"
			"-DQT_WIDGETS_LIB"
			"-DQT_ACCESSIBILITYSUPPORT_LIB"
			"-DQT_THEMESUPPORT_LIB"
			"-DQT_FONTDATABASESUPPORT_LIB"
			"-DQT_EVENTDISPATCHERSUPPORT_LIB"
			"-DQT_GUI_LIB"
			"-DQT_CORE_LIB")
set(qt_SHARED_LINK_FLAGS_RELEASE )
set(qt_EXE_LINK_FLAGS_RELEASE )
set(qt_OBJECTS_RELEASE )
set(qt_COMPILE_DEFINITIONS_RELEASE "QT_XML_LIB"
			"QT_CONCURRENT_LIB"
			"QT_OPENGLEXTENSIONS_LIB"
			"QT_OPENGL_LIB"
			"QT_TEST_LIB"
			"QT_SQL_LIB"
			"QT_NETWORK_LIB"
			"QT_XCBQPA_LIB"
			"QT_XKBCOMMONSUPPORT_LIB"
			"QT_EDIDSUPPORT_LIB"
			"QT_SERVICESUPPORT_LIB"
			"QT_PRINTSUPPORT_LIB"
			"QT_WIDGETS_LIB"
			"QT_ACCESSIBILITYSUPPORT_LIB"
			"QT_THEMESUPPORT_LIB"
			"QT_FONTDATABASESUPPORT_LIB"
			"QT_EVENTDISPATCHERSUPPORT_LIB"
			"QT_GUI_LIB"
			"QT_CORE_LIB")
set(qt_COMPILE_OPTIONS_C_RELEASE )
set(qt_COMPILE_OPTIONS_CXX_RELEASE -fPIC)
set(qt_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib"
			"${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/sqldrivers"
			"${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/platforms")
set(qt_BIN_DIRS_RELEASE )
set(qt_LIBRARY_TYPE_RELEASE STATIC)
set(qt_IS_HOST_WINDOWS_RELEASE 0)
set(qt_LIBS_RELEASE Qt5Xml Qt5Concurrent Qt5OpenGLExtensions Qt5OpenGL Qt5Test Qt5Sql Qt5Network qsqlodbc qsqlmysql qsqlpsql qsqlite qxcb Qt5XcbQpa Qt5XkbCommonSupport Qt5EdidSupport Qt5ServiceSupport Qt5PrintSupport Qt5Widgets Qt5AccessibilitySupport Qt5ThemeSupport Qt5FontDatabaseSupport Qt5EventDispatcherSupport Qt5Gui Qt5Core)
set(qt_SYSTEM_LIBS_RELEASE )
set(qt_FRAMEWORK_DIRS_RELEASE )
set(qt_FRAMEWORKS_RELEASE )
set(qt_BUILD_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Widgets"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Gui"
			"${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/bin"
			"${qt_PACKAGE_FOLDER_RELEASE}/lib/cmake/Qt5Core")
set(qt_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(qt_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_COMPILE_OPTIONS_C_RELEASE}>")
set(qt_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_EXE_LINK_FLAGS_RELEASE}>")


set(qt_COMPONENTS_RELEASE Qt5::Core Qt5::Gui Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::Widgets Qt5::PrintSupport Qt5::ServiceSupport Qt5::EdidSupport Qt5::XkbCommonSupport Qt5::XcbQpa Qt5::QXcbIntegrationPlugin Qt5::QSQLiteDriverPlugin Qt5::QPSQLDriverPlugin Qt5::QMySQLDriverPlugin Qt5::QODBCDriverPlugin Qt5::Network Qt5::Sql Qt5::Test Qt5::OpenGL Qt5::OpenGLExtensions Qt5::Concurrent Qt5::Xml)
########### COMPONENT Qt5::Xml VARIABLES ############################################

set(qt_Qt5_Xml_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtXml")
set(qt_Qt5_Xml_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Xml_BIN_DIRS_RELEASE )
set(qt_Qt5_Xml_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Xml_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Xml_RES_DIRS_RELEASE )
set(qt_Qt5_Xml_DEFINITIONS_RELEASE "-DQT_XML_LIB")
set(qt_Qt5_Xml_OBJECTS_RELEASE )
set(qt_Qt5_Xml_COMPILE_DEFINITIONS_RELEASE "QT_XML_LIB")
set(qt_Qt5_Xml_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Xml_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Xml_LIBS_RELEASE Qt5Xml)
set(qt_Qt5_Xml_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Xml_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Xml_FRAMEWORKS_RELEASE )
set(qt_Qt5_Xml_DEPENDENCIES_RELEASE Qt5::Core)
set(qt_Qt5_Xml_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Xml_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Xml_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Xml_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Xml_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Xml_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Xml_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Xml_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Xml_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Xml_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Concurrent VARIABLES ############################################

set(qt_Qt5_Concurrent_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtConcurrent")
set(qt_Qt5_Concurrent_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Concurrent_BIN_DIRS_RELEASE )
set(qt_Qt5_Concurrent_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Concurrent_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Concurrent_RES_DIRS_RELEASE )
set(qt_Qt5_Concurrent_DEFINITIONS_RELEASE "-DQT_CONCURRENT_LIB")
set(qt_Qt5_Concurrent_OBJECTS_RELEASE )
set(qt_Qt5_Concurrent_COMPILE_DEFINITIONS_RELEASE "QT_CONCURRENT_LIB")
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Concurrent_LIBS_RELEASE Qt5Concurrent)
set(qt_Qt5_Concurrent_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Concurrent_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Concurrent_FRAMEWORKS_RELEASE )
set(qt_Qt5_Concurrent_DEPENDENCIES_RELEASE Qt5::Core)
set(qt_Qt5_Concurrent_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Concurrent_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Concurrent_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Concurrent_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Concurrent_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Concurrent_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Concurrent_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::OpenGLExtensions VARIABLES ############################################

set(qt_Qt5_OpenGLExtensions_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtOpenGLExtensions")
set(qt_Qt5_OpenGLExtensions_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_OpenGLExtensions_BIN_DIRS_RELEASE )
set(qt_Qt5_OpenGLExtensions_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_OpenGLExtensions_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_OpenGLExtensions_RES_DIRS_RELEASE )
set(qt_Qt5_OpenGLExtensions_DEFINITIONS_RELEASE "-DQT_OPENGLEXTENSIONS_LIB")
set(qt_Qt5_OpenGLExtensions_OBJECTS_RELEASE )
set(qt_Qt5_OpenGLExtensions_COMPILE_DEFINITIONS_RELEASE "QT_OPENGLEXTENSIONS_LIB")
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_OpenGLExtensions_LIBS_RELEASE Qt5OpenGLExtensions)
set(qt_Qt5_OpenGLExtensions_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_OpenGLExtensions_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_OpenGLExtensions_FRAMEWORKS_RELEASE )
set(qt_Qt5_OpenGLExtensions_DEPENDENCIES_RELEASE Qt5::Gui Qt5::Core)
set(qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_OpenGLExtensions_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_OpenGLExtensions_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_OpenGLExtensions_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_OpenGLExtensions_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::OpenGL VARIABLES ############################################

set(qt_Qt5_OpenGL_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtOpenGL")
set(qt_Qt5_OpenGL_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_OpenGL_BIN_DIRS_RELEASE )
set(qt_Qt5_OpenGL_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_OpenGL_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_OpenGL_RES_DIRS_RELEASE )
set(qt_Qt5_OpenGL_DEFINITIONS_RELEASE "-DQT_OPENGL_LIB")
set(qt_Qt5_OpenGL_OBJECTS_RELEASE )
set(qt_Qt5_OpenGL_COMPILE_DEFINITIONS_RELEASE "QT_OPENGL_LIB")
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_OpenGL_LIBS_RELEASE Qt5OpenGL)
set(qt_Qt5_OpenGL_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_OpenGL_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_OpenGL_FRAMEWORKS_RELEASE )
set(qt_Qt5_OpenGL_DEPENDENCIES_RELEASE Qt5::Gui Qt5::Core)
set(qt_Qt5_OpenGL_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_OpenGL_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_OpenGL_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_OpenGL_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_OpenGL_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_OpenGL_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_OpenGL_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Test VARIABLES ############################################

set(qt_Qt5_Test_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtTest")
set(qt_Qt5_Test_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Test_BIN_DIRS_RELEASE )
set(qt_Qt5_Test_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Test_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Test_RES_DIRS_RELEASE )
set(qt_Qt5_Test_DEFINITIONS_RELEASE "-DQT_TEST_LIB")
set(qt_Qt5_Test_OBJECTS_RELEASE )
set(qt_Qt5_Test_COMPILE_DEFINITIONS_RELEASE "QT_TEST_LIB")
set(qt_Qt5_Test_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Test_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Test_LIBS_RELEASE Qt5Test)
set(qt_Qt5_Test_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Test_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Test_FRAMEWORKS_RELEASE )
set(qt_Qt5_Test_DEPENDENCIES_RELEASE Qt5::Core)
set(qt_Qt5_Test_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Test_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Test_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Test_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Test_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Test_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Test_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Test_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Test_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Test_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Sql VARIABLES ############################################

set(qt_Qt5_Sql_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtSql")
set(qt_Qt5_Sql_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Sql_BIN_DIRS_RELEASE )
set(qt_Qt5_Sql_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Sql_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Sql_RES_DIRS_RELEASE )
set(qt_Qt5_Sql_DEFINITIONS_RELEASE "-DQT_SQL_LIB")
set(qt_Qt5_Sql_OBJECTS_RELEASE )
set(qt_Qt5_Sql_COMPILE_DEFINITIONS_RELEASE "QT_SQL_LIB")
set(qt_Qt5_Sql_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Sql_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Sql_LIBS_RELEASE Qt5Sql)
set(qt_Qt5_Sql_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Sql_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Sql_FRAMEWORKS_RELEASE )
set(qt_Qt5_Sql_DEPENDENCIES_RELEASE Qt5::Core)
set(qt_Qt5_Sql_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Sql_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Sql_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Sql_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Sql_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Sql_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Sql_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Sql_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Sql_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Sql_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Network VARIABLES ############################################

set(qt_Qt5_Network_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtNetwork")
set(qt_Qt5_Network_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Network_BIN_DIRS_RELEASE )
set(qt_Qt5_Network_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Network_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Network_RES_DIRS_RELEASE )
set(qt_Qt5_Network_DEFINITIONS_RELEASE "-DQT_NETWORK_LIB")
set(qt_Qt5_Network_OBJECTS_RELEASE )
set(qt_Qt5_Network_COMPILE_DEFINITIONS_RELEASE "QT_NETWORK_LIB")
set(qt_Qt5_Network_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Network_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Network_LIBS_RELEASE Qt5Network)
set(qt_Qt5_Network_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Network_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Network_FRAMEWORKS_RELEASE )
set(qt_Qt5_Network_DEPENDENCIES_RELEASE openssl::openssl Qt5::Core)
set(qt_Qt5_Network_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Network_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Network_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Network_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Network_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Network_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Network_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Network_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Network_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Network_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::QODBCDriverPlugin VARIABLES ############################################

set(qt_Qt5_QODBCDriverPlugin_INCLUDE_DIRS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QODBCDriverPlugin_BIN_DIRS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_QODBCDriverPlugin_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_QODBCDriverPlugin_RES_DIRS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_DEFINITIONS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_OBJECTS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_COMPILE_DEFINITIONS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_QODBCDriverPlugin_LIBS_RELEASE qsqlodbc)
set(qt_Qt5_QODBCDriverPlugin_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_FRAMEWORKS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_DEPENDENCIES_RELEASE ODBC::ODBC Qt5::Core)
set(qt_Qt5_QODBCDriverPlugin_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_QODBCDriverPlugin_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QODBCDriverPlugin_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QODBCDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QODBCDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QODBCDriverPlugin_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QODBCDriverPlugin_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::QMySQLDriverPlugin VARIABLES ############################################

set(qt_Qt5_QMySQLDriverPlugin_INCLUDE_DIRS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QMySQLDriverPlugin_BIN_DIRS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_QMySQLDriverPlugin_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_QMySQLDriverPlugin_RES_DIRS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_DEFINITIONS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_OBJECTS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_COMPILE_DEFINITIONS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_QMySQLDriverPlugin_LIBS_RELEASE qsqlmysql)
set(qt_Qt5_QMySQLDriverPlugin_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_FRAMEWORKS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_DEPENDENCIES_RELEASE libmysqlclient::libmysqlclient Qt5::Core)
set(qt_Qt5_QMySQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_QMySQLDriverPlugin_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QMySQLDriverPlugin_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QMySQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QMySQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QMySQLDriverPlugin_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QMySQLDriverPlugin_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::QPSQLDriverPlugin VARIABLES ############################################

set(qt_Qt5_QPSQLDriverPlugin_INCLUDE_DIRS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QPSQLDriverPlugin_BIN_DIRS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_QPSQLDriverPlugin_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_QPSQLDriverPlugin_RES_DIRS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_DEFINITIONS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_OBJECTS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_DEFINITIONS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_QPSQLDriverPlugin_LIBS_RELEASE qsqlpsql)
set(qt_Qt5_QPSQLDriverPlugin_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_DEPENDENCIES_RELEASE PostgreSQL::PostgreSQL Qt5::Core)
set(qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_QPSQLDriverPlugin_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QPSQLDriverPlugin_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QPSQLDriverPlugin_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::QSQLiteDriverPlugin VARIABLES ############################################

set(qt_Qt5_QSQLiteDriverPlugin_INCLUDE_DIRS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QSQLiteDriverPlugin_BIN_DIRS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_QSQLiteDriverPlugin_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_QSQLiteDriverPlugin_RES_DIRS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_DEFINITIONS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_OBJECTS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_DEFINITIONS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_QSQLiteDriverPlugin_LIBS_RELEASE qsqlite)
set(qt_Qt5_QSQLiteDriverPlugin_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_DEPENDENCIES_RELEASE SQLite::SQLite3 Qt5::Core)
set(qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_QSQLiteDriverPlugin_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QSQLiteDriverPlugin_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QSQLiteDriverPlugin_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::QXcbIntegrationPlugin VARIABLES ############################################

set(qt_Qt5_QXcbIntegrationPlugin_INCLUDE_DIRS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/plugins/platforms")
set(qt_Qt5_QXcbIntegrationPlugin_BIN_DIRS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_QXcbIntegrationPlugin_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_QXcbIntegrationPlugin_RES_DIRS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_DEFINITIONS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_OBJECTS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_COMPILE_DEFINITIONS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_QXcbIntegrationPlugin_LIBS_RELEASE qxcb)
set(qt_Qt5_QXcbIntegrationPlugin_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_FRAMEWORKS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui Qt5::XcbQpa)
set(qt_Qt5_QXcbIntegrationPlugin_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_QXcbIntegrationPlugin_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QXcbIntegrationPlugin_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QXcbIntegrationPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QXcbIntegrationPlugin_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QXcbIntegrationPlugin_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QXcbIntegrationPlugin_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::XcbQpa VARIABLES ############################################

set(qt_Qt5_XcbQpa_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include")
set(qt_Qt5_XcbQpa_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_XcbQpa_BIN_DIRS_RELEASE )
set(qt_Qt5_XcbQpa_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_XcbQpa_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_XcbQpa_RES_DIRS_RELEASE )
set(qt_Qt5_XcbQpa_DEFINITIONS_RELEASE "-DQT_XCBQPA_LIB")
set(qt_Qt5_XcbQpa_OBJECTS_RELEASE )
set(qt_Qt5_XcbQpa_COMPILE_DEFINITIONS_RELEASE "QT_XCBQPA_LIB")
set(qt_Qt5_XcbQpa_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_XcbQpa_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_XcbQpa_LIBS_RELEASE Qt5XcbQpa)
set(qt_Qt5_XcbQpa_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_XcbQpa_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_XcbQpa_FRAMEWORKS_RELEASE )
set(qt_Qt5_XcbQpa_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui Qt5::ServiceSupport Qt5::ThemeSupport Qt5::FontDatabaseSupport Qt5::EdidSupport Qt5::XkbCommonSupport xorg::xorg)
set(qt_Qt5_XcbQpa_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_XcbQpa_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_XcbQpa_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_XcbQpa_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_XcbQpa_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_XcbQpa_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_XcbQpa_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_XcbQpa_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_XcbQpa_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_XcbQpa_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::XkbCommonSupport VARIABLES ############################################

set(qt_Qt5_XkbCommonSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtXkbCommonSupport")
set(qt_Qt5_XkbCommonSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_XkbCommonSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_XkbCommonSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_XkbCommonSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_XkbCommonSupport_RES_DIRS_RELEASE )
set(qt_Qt5_XkbCommonSupport_DEFINITIONS_RELEASE "-DQT_XKBCOMMONSUPPORT_LIB")
set(qt_Qt5_XkbCommonSupport_OBJECTS_RELEASE )
set(qt_Qt5_XkbCommonSupport_COMPILE_DEFINITIONS_RELEASE "QT_XKBCOMMONSUPPORT_LIB")
set(qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_XkbCommonSupport_LIBS_RELEASE Qt5XkbCommonSupport)
set(qt_Qt5_XkbCommonSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_XkbCommonSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_XkbCommonSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_XkbCommonSupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui xkbcommon::libxkbcommon-x11)
set(qt_Qt5_XkbCommonSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_XkbCommonSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_XkbCommonSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_XkbCommonSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_XkbCommonSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_XkbCommonSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_XkbCommonSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_XkbCommonSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::EdidSupport VARIABLES ############################################

set(qt_Qt5_EdidSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtEdidSupport")
set(qt_Qt5_EdidSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_EdidSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_EdidSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_EdidSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_EdidSupport_RES_DIRS_RELEASE )
set(qt_Qt5_EdidSupport_DEFINITIONS_RELEASE "-DQT_EDIDSUPPORT_LIB")
set(qt_Qt5_EdidSupport_OBJECTS_RELEASE )
set(qt_Qt5_EdidSupport_COMPILE_DEFINITIONS_RELEASE "QT_EDIDSUPPORT_LIB")
set(qt_Qt5_EdidSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_EdidSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_EdidSupport_LIBS_RELEASE Qt5EdidSupport)
set(qt_Qt5_EdidSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_EdidSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_EdidSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_EdidSupport_DEPENDENCIES_RELEASE Qt5::Core)
set(qt_Qt5_EdidSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_EdidSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_EdidSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_EdidSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_EdidSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_EdidSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_EdidSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_EdidSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_EdidSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_EdidSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::ServiceSupport VARIABLES ############################################

set(qt_Qt5_ServiceSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtServiceSupport")
set(qt_Qt5_ServiceSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_ServiceSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_ServiceSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_ServiceSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_ServiceSupport_RES_DIRS_RELEASE )
set(qt_Qt5_ServiceSupport_DEFINITIONS_RELEASE "-DQT_SERVICESUPPORT_LIB")
set(qt_Qt5_ServiceSupport_OBJECTS_RELEASE )
set(qt_Qt5_ServiceSupport_COMPILE_DEFINITIONS_RELEASE "QT_SERVICESUPPORT_LIB")
set(qt_Qt5_ServiceSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_ServiceSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_ServiceSupport_LIBS_RELEASE Qt5ServiceSupport)
set(qt_Qt5_ServiceSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_ServiceSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_ServiceSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_ServiceSupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui)
set(qt_Qt5_ServiceSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_ServiceSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_ServiceSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_ServiceSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_ServiceSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_ServiceSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_ServiceSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_ServiceSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_ServiceSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_ServiceSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::PrintSupport VARIABLES ############################################

set(qt_Qt5_PrintSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtPrintSupport")
set(qt_Qt5_PrintSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_PrintSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_PrintSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_PrintSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_PrintSupport_RES_DIRS_RELEASE )
set(qt_Qt5_PrintSupport_DEFINITIONS_RELEASE "-DQT_PRINTSUPPORT_LIB")
set(qt_Qt5_PrintSupport_OBJECTS_RELEASE )
set(qt_Qt5_PrintSupport_COMPILE_DEFINITIONS_RELEASE "QT_PRINTSUPPORT_LIB")
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_PrintSupport_LIBS_RELEASE Qt5PrintSupport)
set(qt_Qt5_PrintSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_PrintSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_PrintSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_PrintSupport_DEPENDENCIES_RELEASE Qt5::Gui Qt5::Widgets Qt5::Core)
set(qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_PrintSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_PrintSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_PrintSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_PrintSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Widgets VARIABLES ############################################

set(qt_Qt5_Widgets_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtWidgets")
set(qt_Qt5_Widgets_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Widgets_BIN_DIRS_RELEASE )
set(qt_Qt5_Widgets_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Widgets_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Widgets_RES_DIRS_RELEASE )
set(qt_Qt5_Widgets_DEFINITIONS_RELEASE "-DQT_WIDGETS_LIB")
set(qt_Qt5_Widgets_OBJECTS_RELEASE )
set(qt_Qt5_Widgets_COMPILE_DEFINITIONS_RELEASE "QT_WIDGETS_LIB")
set(qt_Qt5_Widgets_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Widgets_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Widgets_LIBS_RELEASE Qt5Widgets)
set(qt_Qt5_Widgets_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Widgets_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Widgets_FRAMEWORKS_RELEASE )
set(qt_Qt5_Widgets_DEPENDENCIES_RELEASE Qt5::Gui Qt5::Core)
set(qt_Qt5_Widgets_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Widgets_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Widgets_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Widgets_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Widgets_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Widgets_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Widgets_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Widgets_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Widgets_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Widgets_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::AccessibilitySupport VARIABLES ############################################

set(qt_Qt5_AccessibilitySupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtAccessibilitySupport")
set(qt_Qt5_AccessibilitySupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_AccessibilitySupport_BIN_DIRS_RELEASE )
set(qt_Qt5_AccessibilitySupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_AccessibilitySupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_AccessibilitySupport_RES_DIRS_RELEASE )
set(qt_Qt5_AccessibilitySupport_DEFINITIONS_RELEASE "-DQT_ACCESSIBILITYSUPPORT_LIB")
set(qt_Qt5_AccessibilitySupport_OBJECTS_RELEASE )
set(qt_Qt5_AccessibilitySupport_COMPILE_DEFINITIONS_RELEASE "QT_ACCESSIBILITYSUPPORT_LIB")
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_AccessibilitySupport_LIBS_RELEASE Qt5AccessibilitySupport)
set(qt_Qt5_AccessibilitySupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_AccessibilitySupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_AccessibilitySupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_AccessibilitySupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui)
set(qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_AccessibilitySupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_AccessibilitySupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_AccessibilitySupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_AccessibilitySupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::ThemeSupport VARIABLES ############################################

set(qt_Qt5_ThemeSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtThemeSupport")
set(qt_Qt5_ThemeSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_ThemeSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_ThemeSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_ThemeSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_ThemeSupport_RES_DIRS_RELEASE )
set(qt_Qt5_ThemeSupport_DEFINITIONS_RELEASE "-DQT_THEMESUPPORT_LIB")
set(qt_Qt5_ThemeSupport_OBJECTS_RELEASE )
set(qt_Qt5_ThemeSupport_COMPILE_DEFINITIONS_RELEASE "QT_THEMESUPPORT_LIB")
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_ThemeSupport_LIBS_RELEASE Qt5ThemeSupport)
set(qt_Qt5_ThemeSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_ThemeSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_ThemeSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_ThemeSupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui)
set(qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_ThemeSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_ThemeSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_ThemeSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_ThemeSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::FontDatabaseSupport VARIABLES ############################################

set(qt_Qt5_FontDatabaseSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtFontDatabaseSupport")
set(qt_Qt5_FontDatabaseSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_FontDatabaseSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_FontDatabaseSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_FontDatabaseSupport_RES_DIRS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_DEFINITIONS_RELEASE "-DQT_FONTDATABASESUPPORT_LIB")
set(qt_Qt5_FontDatabaseSupport_OBJECTS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_COMPILE_DEFINITIONS_RELEASE "QT_FONTDATABASESUPPORT_LIB")
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_FontDatabaseSupport_LIBS_RELEASE Qt5FontDatabaseSupport)
set(qt_Qt5_FontDatabaseSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui Fontconfig::Fontconfig freetype)
set(qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_FontDatabaseSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_FontDatabaseSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_FontDatabaseSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::EventDispatcherSupport VARIABLES ############################################

set(qt_Qt5_EventDispatcherSupport_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtEventDispatcherSupport")
set(qt_Qt5_EventDispatcherSupport_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_EventDispatcherSupport_BIN_DIRS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_EventDispatcherSupport_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_EventDispatcherSupport_RES_DIRS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_DEFINITIONS_RELEASE "-DQT_EVENTDISPATCHERSUPPORT_LIB")
set(qt_Qt5_EventDispatcherSupport_OBJECTS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_COMPILE_DEFINITIONS_RELEASE "QT_EVENTDISPATCHERSUPPORT_LIB")
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_EventDispatcherSupport_LIBS_RELEASE Qt5EventDispatcherSupport)
set(qt_Qt5_EventDispatcherSupport_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_DEPENDENCIES_RELEASE Qt5::Core Qt5::Gui)
set(qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_EventDispatcherSupport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_EventDispatcherSupport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_EventDispatcherSupport_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Gui VARIABLES ############################################

set(qt_Qt5_Gui_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtGui")
set(qt_Qt5_Gui_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Gui_BIN_DIRS_RELEASE )
set(qt_Qt5_Gui_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Gui_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Gui_RES_DIRS_RELEASE )
set(qt_Qt5_Gui_DEFINITIONS_RELEASE "-DQT_GUI_LIB")
set(qt_Qt5_Gui_OBJECTS_RELEASE )
set(qt_Qt5_Gui_COMPILE_DEFINITIONS_RELEASE "QT_GUI_LIB")
set(qt_Qt5_Gui_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Gui_COMPILE_OPTIONS_CXX_RELEASE "")
set(qt_Qt5_Gui_LIBS_RELEASE Qt5Gui)
set(qt_Qt5_Gui_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Gui_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Gui_FRAMEWORKS_RELEASE )
set(qt_Qt5_Gui_DEPENDENCIES_RELEASE freetype PNG::PNG Fontconfig::Fontconfig xkbcommon::xkbcommon xorg::xorg opengl::opengl JPEG::JPEG md4c::md4c-html Qt5::Core)
set(qt_Qt5_Gui_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Gui_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Gui_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Gui_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Gui_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Gui_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Gui_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Gui_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Gui_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Gui_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Qt5::Core VARIABLES ############################################

set(qt_Qt5_Core_INCLUDE_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/include"
			"${qt_PACKAGE_FOLDER_RELEASE}/include/QtCore"
			"${qt_PACKAGE_FOLDER_RELEASE}/bin/archdatadir/mkspecs/linux-g++")
set(qt_Qt5_Core_LIB_DIRS_RELEASE "${qt_PACKAGE_FOLDER_RELEASE}/lib")
set(qt_Qt5_Core_BIN_DIRS_RELEASE )
set(qt_Qt5_Core_LIBRARY_TYPE_RELEASE STATIC)
set(qt_Qt5_Core_IS_HOST_WINDOWS_RELEASE 0)
set(qt_Qt5_Core_RES_DIRS_RELEASE )
set(qt_Qt5_Core_DEFINITIONS_RELEASE "-DQT_CORE_LIB")
set(qt_Qt5_Core_OBJECTS_RELEASE )
set(qt_Qt5_Core_COMPILE_DEFINITIONS_RELEASE "QT_CORE_LIB")
set(qt_Qt5_Core_COMPILE_OPTIONS_C_RELEASE "")
set(qt_Qt5_Core_COMPILE_OPTIONS_CXX_RELEASE "-fPIC")
set(qt_Qt5_Core_LIBS_RELEASE Qt5Core)
set(qt_Qt5_Core_SYSTEM_LIBS_RELEASE )
set(qt_Qt5_Core_FRAMEWORK_DIRS_RELEASE )
set(qt_Qt5_Core_FRAMEWORKS_RELEASE )
set(qt_Qt5_Core_DEPENDENCIES_RELEASE ZLIB::ZLIB pcre2::pcre2 double-conversion::double-conversion icu::icu zstd::libzstd_static)
set(qt_Qt5_Core_SHARED_LINK_FLAGS_RELEASE )
set(qt_Qt5_Core_EXE_LINK_FLAGS_RELEASE )
set(qt_Qt5_Core_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Core_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Core_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Core_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Core_EXE_LINK_FLAGS_RELEASE}>
)
set(qt_Qt5_Core_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Core_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Core_COMPILE_OPTIONS_C_RELEASE}>")